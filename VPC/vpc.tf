#Configure VPC resource
resource "aws_vpc" "practice_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-vpc"
  })
}

#Configure an Internet-Gateway
resource "aws_internet_gateway" "practice_igw" {
  vpc_id = aws_vpc.practice_vpc.id

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-igw"
  })
}

#Configure Subnets as required (Public, Private, and Backend)
resource "aws_subnet" "public_subnet_az_1a" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.public_cidr_block[0]
  availability_zone = var.availability_zone[0]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-public-subnet-az-1a"
  })
}

resource "aws_subnet" "public_subnet_az_1b" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.public_cidr_block[1]
  availability_zone = var.availability_zone[1]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-public-subnet-az-1b"
  })
}

resource "aws_subnet" "private_subnet_az_1a" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.private_cidr_block[0]
  availability_zone = var.availability_zone[0]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-private-subnet-az-1a"
  })
}

resource "aws_subnet" "private_subnet_az_1b" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.private_cidr_block[1]
  availability_zone = var.availability_zone[1]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-private-subnet-az-1b"
  })
}

resource "aws_subnet" "backend_subnet_az_1a" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.backend_cidr_block[0]
  availability_zone = var.availability_zone[0]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-backend-subnet-az-1a"
  })
}

resource "aws_subnet" "backend_subnet_az_1b" {
  vpc_id     = aws_vpc.practice_vpc.id
  cidr_block = var.backend_cidr_block[1]
  availability_zone = var.availability_zone[1]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-backend-subnet-az-1b"
  })
}