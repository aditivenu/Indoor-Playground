CREATE TABLE Game
(
Name VARCHAR(10) not null,
No_of_courts number(2) NOT NULL,
No_of_players number(2) NOT NULL,
Coach_id number(5) NOT NULL,
PRIMARY KEY (Name),
CHECK(No_of_courts<5)
);

CREATE TABLE Player
(
Player_id number(5),
Player_Name VARCHAR(10),
Branch_id number(5) NOT NULL,
PRIMARY KEY (Player_id)
);

CREATE TABLE GameCourts
(
Name VARCHAR(10),
Courts VARCHAR(10),
PRIMARY KEY (Name,Courts),
FOREIGN KEY (Name) REFERENCES Game(name) ON DELETE CASCADE
);

CREATE TABLE Equipment
(
Name VARCHAR(10),
Price DECIMAL(4,2) NOT NULL,
Quantity number(2) NOT NULL CHECK (Quantity<11),
Game VARCHAR(10),
PRIMARY KEY (Name),
FOREIGN KEY (Game) REFERENCES Game(Name) ON DELETE CASCADE
);

CREATE TABLE Play
(
GameName VARCHAR(10),
Player_id number(5),
PRIMARY KEY (GameName,Player_id),
FOREIGN KEY (GameName) REFERENCES Game(Name) ON DELETE CASCADE,
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE
);

CREATE TABLE Member
(
Player_id number(5),
Member_id number(5),
PRIMARY KEY (Player_id,Member_id),
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE
);

CREATE TABLE Member_info
(
Member_id number(5),
Member_points number(3),
Member_type VARCHAR(10),
PRIMARY KEY (Member_id)
);

CREATE TABLE NonMember
(
Player_id number(5),
PRIMARY KEY (Player_id),
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE
);

CREATE TABLE Membership
(
Member_id number(5),
Branch_id number(5) NOT NULL,
Fees DECIMAL(4,2) NOT NULL CHECK (Fees>0),
Member_type VARCHAR(10),
Mreg_id number(5) NOT NULL,
regDate DATE,
Player_id number(5),
PRIMARY KEY (Member_id),
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE
);

CREATE TABLE Payment
(
Payment_id number(5),
Payment_type VARCHAR(10),
Amount DECIMAL(4,2) NOT NULL CHECK (Amount>0),
Branch_id number(5) NOT NULL,
Member_id number(5),
PRIMARY KEY (Payment_id),
FOREIGN KEY (Member_id) REFERENCES Membership(Member_id) ON DELETE CASCADE
);

CREATE TABLE Employees
(
Emp_id number(5),
Emp_Name VARCHAR(10),
Branch_id number(5) NOT NULL,
Salary DECIMAL(4,2) NOT NULL CHECK (Salary>0),
Manager_Flag char(1),
PRIMARY KEY (Emp_id)
);

CREATE TABLE Staff
(
Emp_id number(5),
PRIMARY KEY (Emp_id),
FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id) ON DELETE CASCADE
);

CREATE TABLE Coach
(
Emp_id number(5),
Coach_id number(5),
PRIMARY KEY (Emp_id,Coach_id),
FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id) ON DELETE CASCADE
);

CREATE TABLE Coach_info
(
Coach_id number(5),
Term VARCHAR(10),
Game VARCHAR(10),
PRIMARY KEY (Coach_id)
);

CREATE TABLE Physician
(
Emp_id number(5),
Phy_id number(5),
PRIMARY KEY (Emp_id,Phy_id),
FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id) ON DELETE CASCADE
);

CREATE TABLE Physician_info
(
Phy_id number(5),
Term VARCHAR(10),
PRIMARY KEY (Phy_id)
);

CREATE TABLE Game_reg
(
GameName VARCHAR(10),
Player_id number(5),
Member_id number(5),
Emp_id number(5),
Reg_id number(5),
PRIMARY KEY (GameName,Player_id,Member_id,Emp_id,Reg_id),
FOREIGN KEY (GameName) REFERENCES Game(Name) ON DELETE CASCADE,
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE,
FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id) ON DELETE CASCADE
);


CREATE TABLE Game_reg_info
(
Reg_id number(5),
Court VARCHAR(10),
Regdatetime DATE,
Gamedatetime DATE,
PRIMARY KEY (Reg_id)
);

CREATE TABLE Game_canc
(
GameName VARCHAR(10),
Player_id number(5),
Member_id number(5),
Emp_id number(5),
Reg_id number(5),
Canc_id number(5),
PRIMARY KEY (GameName,Player_id,Member_id,Emp_id,Reg_id,Canc_id),
FOREIGN KEY (GameName) REFERENCES Game(Name) ON DELETE CASCADE,
FOREIGN KEY (Player_id) REFERENCES Player(Player_id) ON DELETE CASCADE,
FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id) ON DELETE CASCADE
);

CREATE TABLE Game_canc_info
(
Reg_id number(5),
Canc_id number(5),
Cancatetime DATE,
PRIMARY KEY (Reg_id,Canc_id)
);

