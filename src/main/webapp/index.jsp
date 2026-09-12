<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Font & icon libraries -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- FRESH, FRIENDLY DESIGN SYSTEM ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fcfaf7;
      --surface: #ffffff;
      --surface-soft: #f7f5f2;
      --primary: #1e2b3c;
      --primary-soft: #2f4053;
      --accent: #e07a5f;
      --accent-soft: #fce9e2;
      --accent-dark: #c95f43;
      --muted: #6b7280;
      --muted-light: #9ca3af;
      --success: #2a9d8f;
      --star: #f5b342;
      --radius-card: 24px;
      --radius-btn: 40px;
      --radius-sm: 12px;
      --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 4px 8px rgba(0, 0, 0, 0.02);
      --shadow-md: 0 20px 35px -8px rgba(0, 0, 0, 0.06), 0 8px 16px -6px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 30px 45px -12px rgba(0, 0, 0, 0.12);
      --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
      --container: 1280px;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    img {
      display: block;
      max-width: 100%;
    }

    button, input {
      font-family: inherit;
      border: none;
      background: none;
      cursor: pointer;
    }

    /* ---------- TYPOGRAPHY & UTILS ---------- */
    h1, h2, h3, h4, h5 {
      font-weight: 700;
      letter-spacing: -0.02em;
    }

    .section {
      padding: 72px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 38px;
      flex-wrap: wrap;
      gap: 16px;
    }

    .section-header .title-group h2 {
      font-size: 2rem;
      font-weight: 700;
      color: var(--primary);
      line-height: 1.2;
    }

    .section-header .title-group p {
      color: var(--muted);
      font-size: 1rem;
      margin-top: 6px;
    }

    .view-all {
      font-weight: 600;
      font-size: 0.95rem;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      transition: var(--transition);
      background: var(--accent-soft);
      padding: 10px 20px;
      border-radius: var(--radius-btn);
      white-space: nowrap;
    }

    .view-all:hover {
      gap: 14px;
      background: #fbd9cd;
      color: var(--accent-dark);
    }

    /* ---------- BUTTONS (friendly, generous) ---------- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 0.95rem;
      letter-spacing: -0.01em;
      transition: var(--transition);
      border: 2px solid transparent;
      white-space: nowrap;
    }

    .btn-primary {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
      box-shadow: 0 8px 18px -6px rgba(224, 122, 95, 0.3);
    }

    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 14px 24px -8px rgba(224, 122, 95, 0.4);
    }

    .btn-secondary {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      box-shadow: 0 8px 18px -6px rgba(30, 43, 60, 0.2);
    }

    .btn-secondary:hover {
      background: var(--primary-soft);
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: white;
      border-color: rgba(255, 255, 255, 0.3);
      backdrop-filter: blur(8px);
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.3);
      border-color: rgba(255, 255, 255, 0.6);
    }

    /* ---------- HEADER (clean, friendly) ---------- */
    header {
      position: sticky;
      top: 0;
      z-index: 200;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.02);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 16px 0;
      min-height: 80px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 800;
      font-size: 1.6rem;
      letter-spacing: -0.03em;
      color: var(--primary);
      flex-shrink: 0;
    }

    .brand i {
      color: var(--accent);
      font-size: 2rem;
    }

    .brand .accent {
      color: var(--accent);
    }

    nav.main-nav ul {
      display: flex;
      gap: 8px;
      list-style: none;
    }

    nav.main-nav a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      border-radius: var(--radius-btn);
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--muted);
      transition: var(--transition);
    }

    nav.main-nav a i {
      font-size: 0.95rem;
      opacity: 0.8;
    }

    nav.main-nav a:hover,
    nav.main-nav a.active {
      background: var(--surface-soft);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface-soft);
      border-radius: var(--radius-btn);
      padding: 0 6px 0 18px;
      transition: var(--transition);
      border: 1px solid transparent;
      min-width: 240px;
    }

    .search-wrap:focus-within {
      background: white;
      border-color: var(--accent-soft);
      box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.1);
    }

    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-size: 0.95rem;
      color: var(--primary);
    }

    .search-wrap input::placeholder {
      color: var(--muted-light);
    }

    .search-wrap button {
      padding: 10px 14px;
      border-radius: 50%;
      color: var(--muted);
      transition: var(--transition);
    }

    .search-wrap button:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 1.3rem;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
      background: transparent;
    }

    .icon-btn:hover {
      background: var(--surface-soft);
      color: var(--primary);
    }

    .cart-count {
      position: absolute;
      top: 0px;
      right: 0px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      font-size: 1.5rem;
      background: var(--surface-soft);
      color: var(--primary);
      transition: var(--transition);
    }

    #mobileMenu {
      display: none;
      background: white;
      border-top: 1px solid rgba(0, 0, 0, 0.02);
      padding: 16px 0 24px;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }

    #mobileMenu a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 20px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }

    #mobileMenu a i {
      width: 24px;
      color: var(--muted);
    }

    #mobileMenu a:hover {
      background: var(--surface-soft);
    }

    /* ---------- HERO (warm, inviting) ---------- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 80px 0;
      margin: 24px 28px 0;
      border-radius: 40px;
      overflow: hidden;
      background: linear-gradient(125deg, #1e2b3c 0%, #2f4053 100%);
      box-shadow: var(--shadow-md);
    }

    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover;
      opacity: 0.3;
      mix-blend-mode: overlay;
    }

    .hero .container {
      position: relative;
      z-index: 2;
    }

    .hero .badge {
      display: inline-block;
      background: rgba(224, 122, 95, 0.25);
      color: #fce9e2;
      padding: 8px 22px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 0.9rem;
      letter-spacing: 0.3px;
      margin-bottom: 24px;
      border: 1px solid rgba(224, 122, 95, 0.4);
    }

    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 4rem;
      font-weight: 700;
      color: white;
      line-height: 1.15;
      max-width: 700px;
      margin-bottom: 20px;
      letter-spacing: -0.02em;
    }

    .hero p {
      color: rgba(255, 255, 255, 0.9);
      font-size: 1.15rem;
      max-width: 540px;
      margin-bottom: 36px;
      line-height: 1.7;
    }

    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    /* ---------- CATEGORIES (big, touch-friendly) ---------- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 20px;
    }

    .cat-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      padding: 28px 16px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }

    .cat-card .icon-wrap {
      width: 68px;
      height: 68px;
      border-radius: 24px;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 18px;
      font-size: 1.8rem;
      color: var(--accent);
      transition: var(--transition);
    }

    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: white;
      transform: scale(1.05);
    }

    .cat-card h4 {
      font-size: 1.05rem;
      font-weight: 600;
    }

    .cat-card .count {
      font-size: 0.9rem;
      color: var(--muted);
      margin-top: 6px;
    }

    /* ---------- PRODUCT CARDS (clean, spacious) ---------- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 28px;
    }

    .product-card {
      background: var(--surface);
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }

    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface-soft);
      aspect-ratio: 1 / 1;
    }

    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }

    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }

    .product-card .badge {
      position: absolute;
      top: 16px;
      left: 16px;
      background: var(--accent);
      color: white;
      padding: 6px 16px;
      border-radius: var(--radius-btn);
      font-size: 0.75rem;
      font-weight: 700;
      letter-spacing: 0.3px;
      text-transform: uppercase;
    }

    .product-card .badge.sale {
      background: var(--star);
      color: var(--primary);
    }

    .product-card .wish-btn {
      position: absolute;
      top: 16px;
      right: 16px;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.9);
      display: grid;
      place-items: center;
      font-size: 1.2rem;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(6px);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
    }

    .product-card .wish-btn:hover {
      background: white;
      color: var(--accent);
      transform: scale(1.08);
    }

    .product-card .body {
      padding: 22px 22px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .product-card .category-tag {
      font-size: 0.75rem;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }

    .product-card h5 {
      font-size: 1.1rem;
      font-weight: 600;
      line-height: 1.4;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 4px;
    }

    .price {
      font-weight: 700;
      font-size: 1.4rem;
      color: var(--primary);
    }

    .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 0.95rem;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.9rem;
      color: var(--star);
    }

    .rating span {
      color: var(--muted);
      font-weight: 400;
      font-size: 0.85rem;
    }

    .product-card .footer {
      padding: 0 22px 22px;
    }

    .add-btn {
      width: 100%;
      padding: 14px;
      border-radius: var(--radius-btn);
      background: var(--primary);
      color: white;
      font-weight: 600;
      font-size: 0.95rem;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border: 2px solid transparent;
    }

    .add-btn:hover {
      background: var(--accent);
      transform: scale(1.01);
    }

    .add-btn.added {
      background: var(--success);
    }

    /* ---------- DEAL SECTION (spotlight) ---------- */
    .deal-wrap {
      display: flex;
      background: var(--surface);
      border-radius: 40px;
      overflow: hidden;
      box-shadow: var(--shadow-md);
    }

    .deal-img {
      flex: 0 0 48%;
      background: var(--surface-soft);
      min-height: 360px;
    }

    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-content {
      flex: 1;
      padding: 56px 56px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-content .tag {
      display: inline-block;
      background: #fef3d9;
      color: #b76e2e;
      padding: 8px 18px;
      border-radius: var(--radius-btn);
      font-size: 0.8rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 20px;
    }

    .deal-content h3 {
      font-size: 2.2rem;
      font-weight: 700;
      margin-bottom: 12px;
    }

    .deal-content .desc {
      color: var(--muted);
      font-size: 1.05rem;
      margin-bottom: 24px;
    }

    .price-big {
      font-size: 3rem;
      font-weight: 800;
      color: var(--primary);
      line-height: 1.2;
    }

    .price-big .old {
      font-size: 1.4rem;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 16px;
    }

    .stock {
      font-size: 1rem;
      color: var(--muted);
      margin: 12px 0 20px;
    }

    .stock strong {
      color: var(--accent);
    }

    .timer-grid {
      display: flex;
      gap: 16px;
      margin: 24px 0 28px;
    }

    .timer-box {
      background: var(--primary);
      color: white;
      padding: 16px 20px;
      border-radius: 18px;
      min-width: 80px;
      text-align: center;
    }

    .timer-box .num {
      font-size: 2rem;
      font-weight: 700;
      line-height: 1.2;
    }

    .timer-box .label {
      font-size: 0.7rem;
      opacity: 0.75;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    /* ---------- TESTIMONIALS (friendly cards) ---------- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 12px 4px 24px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }

    .testimonials-scroll::-webkit-scrollbar {
      height: 6px;
    }

    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 999px;
    }

    .testimonial-card {
      flex: 0 0 360px;
      background: var(--surface);
      border-radius: 32px;
      padding: 32px 32px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
    }

    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
    }

    .stars {
      color: var(--star);
      font-size: 1.2rem;
      letter-spacing: 3px;
      margin-bottom: 16px;
    }

    blockquote {
      font-size: 1rem;
      line-height: 1.7;
      color: var(--primary);
      margin-bottom: 24px;
      font-style: italic;
    }

    .author {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .avatar {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface-soft);
    }

    .name {
      font-weight: 700;
      font-size: 1rem;
    }

    .role {
      font-size: 0.85rem;
      color: var(--muted);
    }

    /* ---------- NEWSLETTER (clean callout) ---------- */
    .newsletter-wrap {
      background: linear-gradient(125deg, #1e2b3c 0%, #2f4053 100%);
      border-radius: 48px;
      padding: 64px 72px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow-md);
    }

    .newsletter-wrap .text h3 {
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 8px;
    }

    .newsletter-wrap .text p {
      opacity: 0.8;
      font-size: 1.1rem;
    }

    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 540px;
    }

    .newsletter-wrap input {
      flex: 1;
      min-width: 240px;
      padding: 18px 28px;
      border-radius: var(--radius-btn);
      border: 2px solid transparent;
      font-size: 1rem;
      background: rgba(255, 255, 255, 0.1);
      color: white;
      outline: none;
      transition: var(--transition);
    }

    .newsletter-wrap input::placeholder {
      color: rgba(255, 255, 255, 0.6);
    }

    .newsletter-wrap input:focus {
      border-color: var(--accent);
      background: rgba(255, 255, 255, 0.15);
    }

    .newsletter-wrap .btn {
      background: var(--accent);
      color: white;
      padding: 18px 40px;
    }

    .newsletter-wrap .btn:hover {
      background: var(--accent-dark);
    }

    #newsletterMsg {
      margin-top: 12px;
      font-size: 0.95rem;
      width: 100%;
    }

    /* ---------- FOOTER (airy, readable) ---------- */
    footer {
      margin-top: 40px;
      padding: 64px 0 40px;
      border-top: 1px solid rgba(0, 0, 0, 0.02);
      background: var(--bg);
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 48px;
    }

    .footer-grid .brand-col .brand {
      font-size: 1.5rem;
      margin-bottom: 16px;
    }

    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 0.95rem;
      max-width: 320px;
      line-height: 1.7;
    }

    .socials {
      display: flex;
      gap: 12px;
      margin-top: 24px;
    }

    .socials a {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: var(--surface-soft);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 1.1rem;
    }

    .socials a:hover {
      background: var(--accent);
      color: white;
      transform: translateY(-3px);
    }

    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 1rem;
      margin-bottom: 20px;
      color: var(--primary);
    }

    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
    }

    .footer-grid .col a {
      color: var(--muted);
      font-size: 0.95rem;
      transition: var(--transition);
    }

    .footer-grid .col a:hover {
      color: var(--accent);
    }

    .footer-bottom {
      text-align: center;
      padding-top: 32px;
      border-top: 1px solid rgba(0, 0, 0, 0.03);
      color: var(--muted-light);
      font-size: 0.9rem;
    }

    /* ---------- RESPONSIVE (friendly on all screens) ---------- */
    @media (max-width: 1200px) {
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
        gap: 32px;
      }
    }

    @media (max-width: 992px) {
      .hero h1 {
        font-size: 3rem;
      }
      .hero {
        min-height: 440px;
        margin: 16px 20px 0;
        padding: 48px 0;
        border-radius: 32px;
      }
      .deal-wrap {
        flex-direction: column;
      }
      .deal-img {
        flex: 0 0 280px;
      }
      .deal-content {
        padding: 40px 36px;
      }
      .newsletter-wrap {
        padding: 48px 40px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        max-width: 100%;
      }
      .search-wrap {
        min-width: 160px;
      }
    }

    @media (max-width: 768px) {
      .container {
        padding: 0 20px;
      }
      .header-inner {
        min-height: 70px;
      }
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: grid;
        place-items: center;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 18px;
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 16px;
      }
      .hero {
        margin: 12px 12px 0;
        min-height: 380px;
        padding: 40px 0;
        border-radius: 28px;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .hero p {
        font-size: 1rem;
      }
      .section {
        padding: 48px 0;
      }
      .section-header .title-group h2 {
        font-size: 1.6rem;
      }
      .deal-content {
        padding: 32px 28px;
      }
      .deal-content h3 {
        font-size: 1.8rem;
      }
      .price-big {
        font-size: 2.2rem;
      }
      .timer-box {
        min-width: 64px;
        padding: 12px 14px;
      }
      .timer-box .num {
        font-size: 1.5rem;
      }
      .testimonial-card {
        flex: 0 0 300px;
        padding: 24px;
      }
      .newsletter-wrap {
        padding: 32px 24px;
        border-radius: 32px;
      }
      .newsletter-wrap .text h3 {
        font-size: 1.5rem;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 32px;
      }
      .search-wrap {
        min-width: 120px;
      }
      .search-wrap input {
        padding: 10px 0;
        font-size: 0.9rem;
      }
      .brand {
        font-size: 1.3rem;
      }
      .brand i {
        font-size: 1.6rem;
      }
      .icon-btn {
        width: 40px;
        height: 40px;
        font-size: 1.1rem;
      }
    }

    @media (max-width: 480px) {
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .hero h1 {
        font-size: 1.9rem;
      }
      .hero .actions .btn {
        padding: 12px 20px;
        font-size: 0.85rem;
      }
      .product-card .body {
        padding: 14px 14px 10px;
      }
      .product-card h5 {
        font-size: 0.95rem;
      }
      .price {
        font-size: 1.1rem;
      }
      .add-btn {
        padding: 10px;
        font-size: 0.8rem;
      }
      .deal-content {
        padding: 24px 18px;
      }
      .timer-box {
        min-width: 50px;
        padding: 8px 8px;
      }
      .timer-box .num {
        font-size: 1.2rem;
      }
      .timer-box .label {
        font-size: 0.55rem;
      }
      .cat-card {
        padding: 18px 10px;
      }
      .cat-card .icon-wrap {
        width: 52px;
        height: 52px;
        font-size: 1.4rem;
      }
      .cat-card h4 {
        font-size: 0.9rem;
      }
    }
  </style>
</head>
<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <i class="fas fa-bars"></i>
        </button>
        <a class="brand" href="#">
          <i class="fas fa-store-alt"></i>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search">
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div style="position:relative;">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2>Browse Categories</h2>
            <p>Find exactly what you're looking for</p>
          </div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2>Trending Now</h2>
            <p>What's hot — popular picks from our community</p>
          </div>
          <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2>⚡ Flash Deal</h2>
            <p>Grab it before it's gone — limited stock</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
            <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
            <p class="stock">Only <strong>12</strong> items left — hurry!</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2>What Our Customers Say</h2>
            <p>Real reviews from real people</p>
          </div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text">
            <h3>Stay in the Loop</h3>
            <p>Get exclusive offers, early access & new arrivals</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>
  </main>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand">
            <i class="fas fa-store-alt"></i>
            <span>Nexus<span class="accent">Shop</span></span>
          </div>
          <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
          <div class="socials">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul>
        </div>
        <div class="col">
          <h5>Support</h5>
          <ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul>
        </div>
        <div class="col">
          <h5>Legal</h5>
          <ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <span id="year"></span> NexusShop. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- SCRIPT (same data and logic, refreshed) -->
  <script>
    // ========== DATA ==========
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
      { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
      { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
      { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
    ];

    // ========== STATE ==========
    let cartCount = 0;

    // ========== DOM REFS ==========
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ========== RENDER FUNCTIONS ==========
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="count">${cat.count} items</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:60px;color:var(--muted);font-size:1.1rem;">No products found. Try another search.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id, this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${escapeHtml(t.text)}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div>
              <div class="name">${escapeHtml(t.name)}</div>
              <div class="role">${escapeHtml(t.role)}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ========== HELPERS ==========
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.3)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();
      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1500);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.color = 'var(--accent)';
      setTimeout(() => cartBtn.style.color = '', 400);
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) {
        renderProducts(PRODUCTS);
        return;
      }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ========== DEAL TIMER ==========
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ========== EVENT BINDINGS ==========
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = 'var(--success)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
      }, 1600);
    });

    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ffb3b3';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = '#a8e6cf';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => {
        newsletterMsg.style.display = 'none';
      }, 3500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    document.getElementById('year').textContent = new Date().getFullYear();

    // ========== INIT ==========
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('🚀 NexusShop — friendly e‑commerce demo ready.');
  </script>
</body>
</html>
