# Mobarter

### Our Mission
A payment solution for Africans. At Mobarter, our mission is to empower Africans with seamless, secure, and accessible financial tools powered by cryptocurrency. We aim to simplify daily payments, promote financial inclusion, and help users take control of their money from bill payments to savings all in one platform.


## Overview
Mobarter is your all-in-one platform for managing everyday payments using cryptocurrency. From paying baills to sending scheduled payments to friends and family, Mobarter makes crypto practical for daily life. Plus, you can save towards your financial goals and earn rewards as you do.

## Project Overview
This project consists of three main components:

- **Mobile Application (React Native)** - Cross-platform app with authentication, task management, and cryptocurrency integration
- **Smart Contracts (Solidity)** - Smart contracts for user accounts and task management on Celo blockchain
- **Backend Services (Nest.js)** - Server-side logic for blockchain integration, notifications, and data management
- **Static Server (Next.js)** - To host static files and constants 

## Features

- 🔌 Buy Airtime & Data
Instantly purchase mobile airtime and internet data using stablecoins.

- 🎲 Fund Betting Wallets
Seamlessly top up betting platforms like OneXBet, Bet9ja, and more with crypto.

- 🎁 Buy Gift Cards
Use your crypto assets to purchase gift cards for loved ones.

- 💡 Pay Utility Bills
Pay electricity and water bills directly with stablecoins.

- 🔁 Schedule Payments
Automate recurring fiat payments to friends and family.

- 🔄 On/Off Ramping Services
Fast, reliable crypto-to-fiat and fiat-to-crypto exchange services.

- 💰 Save and manage your funds
Earn and grow your funds as you save
  


## System Architecture & Technology Stack

A modern, layered architecture that combines traditional web2 infrastructure with cutting-edge blockchain technology:

### Frontend Layer (Mini App)
- **Telegram mini app** built with Next.js
- **Zustand state management** for reactive UI and business logic
- **Particle Network Authentication** with Telegram auto Sign-In integration
- **Celo blockchain integration** Communicates with the blockchain through embedded wallets
- **Multi-currency support** (Good Dollar, Celo Dollar, USDT, USDC)
- **Account abstraction** using Particle Network Auth
- **Apollo Graphql** For consumption of API endpoints on the client

### Frontend Layer (Mobile App)
- **Cross-platform mobile application** (iOS/Android) built with React Native
- **Zustand state management** for reactive UI and business logic
- **Thirdweb Authentication** with Google Sign-In integration
- **Celo blockchain integration** Communicates with the blockchain through embedded wallets
- **Multi-currency support** (Good Dollar, Celo Dollar, USDT, USDC)
- **Account abstraction** using ERC-4337 with Thirdweb auth
- **Apollo Graphql** For consumption of API endpoints on the client

### Backend Layer (Nest.js)
- **Core Bussiness Logic**  Core Business logic and API implementation on the backend
- **Graphql API** Expose api via graphql


### Blockchain Layer (Celo Network)
- **Contract**: TxnManager contracts deployed on Celo Mainnet for managing all bill payments transactions

### Data Layer (Postgres)
- **Database** Postgres API





