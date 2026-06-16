CREATE TABLE machines (
    machine_id INT PRIMARY KEY AUTO_INCREMENT,
    machine_name VARCHAR(100),
    status VARCHAR(20),
    utilization_percentage DECIMAL(5,2)
);

CREATE TABLE production_records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    production_date DATE,
    machine_id INT,
    target_quantity INT,
    actual_quantity INT,
    downtime_minutes INT,
    FOREIGN KEY (machine_id) REFERENCES machines(machine_id)
);
