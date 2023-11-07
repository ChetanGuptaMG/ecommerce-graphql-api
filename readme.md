# E-commerce GraphQL API

**Description**: A Simple GraphQL Project for Managing Orders and Products

**Live Project Link**: [GraphQL Live Demo](http://52.66.137.253:1000/graphql)

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Deployment](#deployment)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Sample Queries and Mutations](#sample-queries-and-mutations)
- [Contributing](#contributing)

## Overview

This project is a simple GraphQL-based system for managing orders and products. It provides basic functionalities to query orders and perform mutations to add new products and reviews. GraphQL is a powerful query language for APIs that allows you to request exactly the data you need, making it highly efficient and flexible. 

### Importance of GraphQL

GraphQL offers several advantages for API development:

- **Efficiency**: GraphQL allows clients to request only the data they need, reducing over-fetching and under-fetching of data. This can lead to more efficient API calls.

- **Flexibility**: Clients can request multiple resources in a single query, avoiding the need for multiple round-trips to the server. 

- **Strongly Typed**: GraphQL schemas provide a clear contract between the client and server, making it easier to understand and document the API.

- **Real-time**: GraphQL supports real-time data with subscriptions, enabling applications to receive updates when data changes.

- **Ecosystem**: GraphQL has a growing ecosystem of tools, libraries, and community support.

## Deployment

This project has been deployed on an AWS EC2 instance using Docker. Below are the steps on how to deploy any project:

1. **Create an EC2 Instance**:
   - Launch an AWS EC2 instance with the desired configuration. Ensure that you configure security groups to allow access to the necessary ports.

2. **SSH Access**:
   - Use SSH to connect to your EC2 instance.

3. **Docker Installation**:
   - Install Docker on your EC2 instance if it's not already installed.

4. **Project Setup**:
   - Clone your project repository to your EC2 instance.

5. **Build and Run with Docker**:
   - Navigate to your project directory.
   - Build the Docker image using your Dockerfile.
   - Run the Docker container, making your GraphQL API accessible.

## Getting Started

### Prerequisites

- Node.js
- npm or yarn

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/your-project.git
   cd your-project
2. Install dependencies:
    
    npm install
3. Start the server:

    npm start

## Sample Queries and Mutations
  
  Here are some example queries and mutations you can perform:
  Query for Orders    

    query {
    orders {
        date
        subtotal
        items {
        product {
            description
            price
        }
        quantity
        }
    }
    }

 Add a New Product
    
    mutation {
    addNewProduct(id: "uniqueProductId", description: "New Product", price: 99.99) {
        id
        description
        price
    }
    }
 
 Add a New Product Review

    mutation {
    addNewProductReview(id: "uniqueProductId", rating: 5, comment: "Great product!") {
        rating
        comment
    }}

## Contributing

 Contributions are welcome! If you'd like to contribute to this project, please follow our contribution guidelines.