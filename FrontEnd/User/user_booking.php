<?php
// users_booking.php

// Include database configuration file
include_once '../../Include/database.php';

// Start session
session_start();

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
    // Redirect to login page if not logged in
    header("Location: ../../index.php");
    exit();
}

// Get user ID from session
$user_id = $_SESSION['user_id'];

// Initialize arrays for all booking statuses
$pendingBookings = [];
$confirmedBookings = [];
$canceledBookings = [];
$completedBookings = [];

// Fetch all bookings for the logged-in user
$query = "
    SELECT b.booking_id, b.appointment_date, b.appointment_time, b.status, 
           p.name AS provider_name, s.service_name, b.user_email 
    FROM bookings b
    JOIN serviceproviders p ON b.provider_id = p.provider_id
    JOIN services s ON b.service_name = s.service_name
    WHERE b.user_id = ?
";

$stmt = $conn->prepare($query);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();

// Loop through the results and categorize bookings based on their status
while ($row = $result->fetch_assoc()) {
    error_log("Booking ID: " . $row['booking_id'] . " - Status: " . $row['status']); // Debugging line
    switch ($row['status']) {
        case 'Pending':
            $pendingBookings[] = $row;
            break;
        case 'Confirmed':
            $confirmedBookings[] = $row;
            break;
        case 'Canceled':
            $canceledBookings[] = $row;
            break;
        case 'Completed':
            $completedBookings[] = $row;
            break;
        default:
            error_log("Unknown status for Booking ID: " . $row['booking_id']);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Bookings</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../Include/CSS/index.css">
</head>
<body>
<header class="bg-primary text-white py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h2 class="logo">Home Needs</h2>
            <nav class="navigation">
                <a href="user_dashboard.php" class="nav-link text-white">Home</a>
                <a href="#about" class="nav-link text-white">About</a>
                <a href="services.php" class="nav-link text-white">Services</a>
                <a href="contact.php" class="nav-link text-white">Contact</a>
                <a href="user_booking.php" class="nav-link text-white">Your Booking</a>
                <a href="profile.php" class="nav-link text-white"><?php echo htmlspecialchars($_SESSION['name']); ?></a>
                <a href="../../index.php" class="btn btn-light">Logout</a>
            </nav>
        </div>
    </div>
</header>

<section class="table-status container my-5">

    <!-- Pending Bookings -->
    <?php if (!empty($pendingBookings)): ?>
        <h3>Pending Bookings</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Service Name</th>
                    <th>Provider Name</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($pendingBookings as $booking): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($booking['service_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['provider_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_date']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_time']); ?></td>
                        <td><span class="badge badge-warning">Pending</span></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>

    <!-- Confirmed Bookings -->
    <?php if (!empty($confirmedBookings)): ?>
        <h3>Confirmed Bookings</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Service Name</th>
                    <th>Provider Name</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($confirmedBookings as $booking): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($booking['service_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['provider_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_date']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_time']); ?></td>
                        <td><span class="badge badge-success">Confirmed</span></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>

    <!-- Canceled Bookings -->
    <?php if (!empty($canceledBookings)): ?>
        <h3>Canceled Bookings</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Service Name</th>
                    <th>Provider Name</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($canceledBookings as $booking): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($booking['service_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['provider_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_date']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_time']); ?></td>
                        <td><span class="badge badge-danger">Canceled</span></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php endif; ?>

    <!-- Completed Bookings -->
    <?php if (!empty($completedBookings)): ?>
        <h3>Completed Bookings</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Provider Name</th>
                    <th>Service Type</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                    <th>User Email</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($completedBookings as $booking): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($booking['provider_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['service_name']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_date']); ?></td>
                        <td><?php echo htmlspecialchars($booking['appointment_time']); ?></td>
                        <td><span class="badge badge-success">Completed</span></td>
                        <td><?php echo htmlspecialchars($booking['user_email']); ?></td>
                        <td>
                            <?php if (isset($booking['review']) && $booking['review'] !== null): ?>
                                <p>Rating: <?php echo htmlspecialchars($booking['review']['rating']); ?>/5</p>
                                <p>Review: <?php echo htmlspecialchars($booking['review']['review']); ?></p>
                            <?php else: ?>
                                <a href='review.php?provider_id=<?php echo htmlspecialchars($booking['provider_id']); ?>&booking_id=<?php echo htmlspecialchars($booking['booking_id']); ?>' class='btn btn-primary'>Leave a Review</a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p class="text-muted">No completed bookings found.</p>
    <?php endif; ?>

</section>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
