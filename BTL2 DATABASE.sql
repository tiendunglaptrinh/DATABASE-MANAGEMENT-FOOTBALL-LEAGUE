CREATE DATABASE MANAGEMENT_FOOTBALL_LEAGUE
USE MANAGEMENT_FOOTBALL_LEAGUE
GO

CREATE TABLE NATION(
	FFCountryCode	VARCHAR NOT NULL,
	Continent		VARCHAR UNIQUE,
	Nname			VARCHAR
	PRIMARY KEY (FFCountryCode));

CREATE TABLE SEASON(
	HostYearCode INT,
	OpenDate	INT,
	CloseDate	INT,
	No_Team		INT,
	S_FFCCode	VARCHAR NOT NULL,
	PRIMARY KEY (HostYearCode),
	FOREIGN KEY (S_FFCCode) REFERENCES NATION(FFCountryCode));

CREATE TABLE PARTICIPATE_IN(
	P_FFCCode VARCHAR,
	P_HYearCode INT,
	PRIMARY KEY (P_FFCCode, P_HYearCode),
	FOREIGN KEY (P_FFCCode) REFERENCES NATION(FFCountryCode),
	FOREIGN KEY (P_HYearCode) REFERENCES SEASON(HostYearCode));

CREATE TABLE SEASON_TEAM(
	TeamName	VARCHAR,
	T_FFCCode	VARCHAR,
	PRIMARY KEY (TeamName),
	FOREIGN KEY (T_FFCCode) REFERENCES NATION(FFCountryCode));

CREATE TABLE INCLUDE(
	I_HYearCode INT,
	I_TeamName	VARCHAR,
	No_player	INT,
	PRIMARY KEY (I_HYearCode, I_TeamName),
	FOREIGN KEY (I_HYearCode) REFERENCES SEASON(HostYearCode),
	FOREIGN KEY (I_TeamName) REFERENCES SEASON_TEAM(TeamName));

CREATE TABLE SPONSOR(
	SpsName	VARCHAR,
	SpsType VARCHAR,
	PRIMARY KEY (SpsName));

CREATE TABLE SPOSOR_FOR(
	SF_Name	VARCHAR,
	SF_Team	VARCHAR,
	Finance	DECIMAL(10,2),
	PRIMARY KEY (SF_Name, SF_Team),
	FOREIGN KEY (SF_Name) REFERENCES SPONSOR(SpsName),
	FOREIGN KEY (SF_Team) REFERENCES SEASON_TEAM(TeamName));

CREATE TABLE STADIUM(
	StadiumCode	VARCHAR,
	SName VARCHAR,
	Address	VARCHAR,
	UNIQUE (SName),
	PRIMARY KEY (StadiumCode));

CREATE TABLE GATE_STADIUM(
	GateStadium	INT,
	GS_SCode	VARCHAR,
	PRIMARY KEY (GateStadium, GS_SCode),
	FOREIGN KEY (GS_SCode) REFERENCES STADIUM(StadiumCode));

CREATE TABLE MATCHES(
	MatchCode	VARCHAR,
	M_HYearCode	INT,
	TimeStart	TIME,
	TimeFinish	TIME,
	MatchDate	DATE,
	M_SCode		VARCHAR,
	PRIMARY KEY (MatchCode, M_HYearCode),
	FOREIGN KEY (M_HYearCode) REFERENCES SEASON(HostYearCode),
	FOREIGN KEY (M_SCode) REFERENCES STADIUM(StadiumCode));

CREATE TABLE TEAM_MEMBER(
	MemberCode	VARCHAR,
	FName		VARCHAR,
	Minit		VARCHAR,
	LName		VARCHAR,
	Age			INT,
	Gender		CHAR,
	Nationality	VARCHAR,
	TM_Team		VARCHAR,
	PRIMARY KEY (MemberCode),
	FOREIGN KEY (TM_Team) REFERENCES SEASON_TEAM(TeamName));

CREATE TABLE COACH(
	CoachCode VARCHAR,
	CoachCef	VARCHAR,
	Experience	INT,
	LeadCode	VARCHAR,
	C_Team		VARCHAR,
	PRIMARY KEY (CoachCode),
	FOREIGN KEY (CoachCode) REFERENCES TEAM_MEMBER(MemberCode),
	FOREIGN KEY (C_Team) REFERENCES SEASON_TEAM(TeamName));

CREATE TABLE STAFF(
	StaffCode	VARCHAR,
	Position	VARCHAR,
	PRIMARY KEY (StaffCode),
	FOREIGN KEY (StaffCode) REFERENCES TEAM_MEMBER(MemberCode));

CREATE TABLE PLAYER(
	PlayerCode	VARCHAR,
	Status		VARCHAR,
	Role		VARCHAR,
	ShirtNum	INT,
	PRIMARY KEY (PlayerCode),
	FOREIGN KEY (PlayerCode) REFERENCES TEAM_MEMBER(MemberCode));

CREATE TABLE IS_PLAYED(
	is_PlayedCode	VARCHAR,
	is_MatchCode	VARCHAR,
	is_YearCode		INT,
	Role			VARCHAR,
	TimeIn			TIME,
	TimeOut			TIME,
	PRIMARY KEY	(is_PlayedCode, is_MatchCode, is_YearCode),
	FOREIGN KEY (is_PlayedCode) REFERENCES PLAYER(PlayerCode),
	FOREIGN KEY (is_MatchCode, is_YearCode) REFERENCES MATCHES(MatchCode, M_HYearCode));

CREATE TABLE CARD(
	TypeCard	VARCHAR,
	Time		TIME,
	Card_Player	VARCHAR,
	Card_Match	VARCHAR,
	Card_HYear	INT,
	PRIMARY KEY (TypeCard, Time, Card_Player, Card_Match, Card_HYear),
	FOREIGN KEY (Card_Player, Card_Match, Card_HYear) REFERENCES IS_PLAYED(is_PlayedCode,is_MatchCode, is_YearCode));

CREATE TABLE GOALS(
	TimeGoal	TIME,
	Goal_Player	VARCHAR,
	Goal_Match	VARCHAR,
	Goal_HYear	INT,
	PRIMARY KEY (TimeGoal, Goal_Player, Goal_Match, Goal_HYear),
	FOREIGN KEY (Goal_Player, Goal_Match, Goal_HYear) REFERENCES IS_PLAYED(is_PlayedCode,is_MatchCode, is_YearCode));

CREATE TABLE ASSITS(
	TimeAssit	TIME,
	Assit_Player	VARCHAR,
	Assit_Match		VARCHAR,
	Assit_HYear		INT,
	PRIMARY KEY (TimeAssit, Assit_Player, Assit_Match, Assit_HYear),
	FOREIGN KEY (Assit_Player, Assit_Match, Assit_HYear) REFERENCES IS_PLAYED(is_PlayedCode,is_MatchCode, is_YearCode));

CREATE TABLE PLAY_IN(
	TeamPlay	VARCHAR,
	MatchPlay	VARCHAR,
	HYearPlay	INT,
	PRIMARY KEY (TeamPlay, MatchPlay, HYearPlay),
	FOREIGN KEY (TeamPlay) REFERENCES SEASON_TEAM(TeamName),
	FOREIGN KEY (MatchPlay, HYearPlay) REFERENCES MATCHES(MatchCode, M_HYearCode));
