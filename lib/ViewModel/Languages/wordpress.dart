class WordPress {
  static List wordpress = [
    [
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/WordPress-Development.jpg?alt=media&token=fa80e1b3-e4c2-4b1b-8a63-59f2166f797d",
        "topic": "Introduction to WordPress",
        "para":
            '''WordPress is a popular and widely-used content management system (CMS) that empowers individuals and businesses to create, manage, and publish their websites and blogs with ease. It was first released in 2003 and has since evolved into a versatile platform that caters to a vast array of users, from beginners to experienced developers.

At its core, WordPress is an open-source software, which means its source code is freely available to anyone, allowing developers to modify, improve, and distribute it as needed. This open nature has contributed significantly to its robust and active community, fostering a vast ecosystem of themes, plugins, and resources.

The key features that make WordPress so popular are:

User-Friendly Interface: WordPress offers an intuitive and user-friendly interface, making it accessible to individuals without in-depth technical knowledge. It allows users to easily create and manage web pages, blog posts, media content, and more.

Customization: With thousands of themes and templates available, users can customize the appearance of their websites to reflect their unique branding and style. Additionally, a vast selection of plugins extends functionality, enabling users to add various features such as contact forms, e-commerce capabilities, SEO optimization, and more.

Content Management: WordPress excels in content management, allowing users to organize their content with categories and tags, schedule posts for future publishing, and manage user roles and permissions.

SEO-Friendly: WordPress is built with search engine optimization (SEO) in mind, providing clean code and various plugins that help improve website visibility and rankings on search engines.

Active Community: The WordPress community is a vibrant and supportive network of developers, designers, and users. Regular updates and improvements keep the platform secure and up-to-date with the latest web technologies.

Mobile Responsiveness: WordPress websites are designed to be mobile-friendly, ensuring they look and function well on various devices, including smartphones and tablets.

Scalability: Whether you're starting a personal blog or building a large corporate website, WordPress scales effortlessly to meet your needs.

Overall, WordPress has become the go-to choice for millions of website owners due to its ease of use, customization options, and versatility. Its widespread adoption across the internet has solidified its position as one of the most dominant content management systems in the world.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/howtoinstallwordpress.png?alt=media&token=9b678914-a5e4-45d5-8819-617621d2692c",
        "topic": "Installing WordPress:",
        "para":
            '''Installing WordPress is a straightforward process, and there are a few different methods you can use depending on your hosting environment and technical expertise. Here's a general guide to help you get started:

Requirements:
Before you begin, ensure that your web hosting environment meets the minimum requirements for running WordPress:

Web Hosting: You'll need a web hosting account with a domain name where you want to install WordPress.

Database: WordPress requires a MySQL database to store your website's content and settings.

FTP Client (optional): If you want to install WordPress manually, you'll need an FTP client like FileZilla.

Method 1: One-Click Installation (Recommended for Most Users):

Many web hosting providers offer one-click installation options for WordPress. Here's a general outline of the steps:

Login to your hosting account: Access your hosting provider's control panel (cPanel, Plesk, etc.) using the login credentials provided by your hosting company.

Locate the "WordPress Installer" or "Softaculous Apps Installer": In cPanel, look for an icon or section labeled "WordPress" or "Softaculous Apps Installer."

Click on "WordPress" or "Install WordPress": Follow the on-screen instructions, provide the necessary information, such as your domain name, directory (if installing in a subdirectory), and desired admin username and password.

Install WordPress: Click the "Install" or "Submit" button to begin the installation process. The installer will create the necessary database, configure settings, and install WordPress for you.

Access WordPress Admin Dashboard: After installation, you can access your WordPress dashboard by going to yourdomain.com/wp-admin/ and log in with the admin credentials you set during the installation.

Method 2: Manual Installation (Advanced Users):

If you prefer more control or your hosting provider doesn't offer one-click installation, you can install WordPress manually:

Download WordPress: Go to wordpress.org/download and download the latest version of WordPress.

Create a Database: In your hosting control panel, create a new MySQL database and a user with all privileges for that database. Take note of the database name, username, and password.

Upload WordPress Files: If you're using an FTP client, connect to your web hosting account and upload the WordPress files to your desired directory (usually public_html for the main domain).

Configure wp-config.php: In the main WordPress directory, find the file named "wp-config-sample.php." Rename it to "wp-config.php" and open it in a text editor. Enter your database information (database name, username, and password) in the appropriate fields and save the file.

Install WordPress: Open your web browser and navigate to your domain name. The WordPress installation process will begin. Provide the necessary information when prompted.

Access WordPress Admin Dashboard: After installation, you can access your WordPress dashboard by going to yourdomain.com/wp-admin/ and log in with the admin credentials you set during the installation.

That's it! You've now installed WordPress and can start customizing your website, adding content, and exploring the vast array of themes and plugins available to enhance your site's functionality.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/dashboard.jpeg?alt=media&token=c36e7c2e-729a-44d9-9504-c99b77338035",
        "topic": "WordPress Dashboard:",
        "para":
            '''The WordPress dashboard is the central control panel of your WordPress website. It is the backend interface where you can manage and control all aspects of your site, including creating and editing content, customizing the appearance, installing plugins, and managing user roles.

To access the WordPress dashboard:

Open your web browser and enter your website's domain name followed by "/wp-admin" (e.g., "www.yourdomain.com/wp-admin").
You will be presented with a login page where you need to enter your admin username and password that you set during the WordPress installation.
After logging in, you will be redirected to the WordPress dashboard.
The WordPress dashboard is designed to be user-friendly and intuitive. It consists of several sections and menu items:

Toolbar: The toolbar appears at the top of the screen on the front-end and back-end of your website. It provides quick access to essential features, such as adding a new post, managing comments, and viewing your website.

Admin Menu: The admin menu is located on the left-hand side of the dashboard and contains various options and sub-menus:

Dashboard: The main overview page of your site with widgets displaying site activity, recent posts, and other useful information.

Posts: Here you can create, edit, and manage your blog posts and other types of content, organized by categories and tags.

Media: This section allows you to manage and upload images, videos, and other media files that you can use in your posts and pages.

Pages: Similar to posts, but pages are generally used for static content like "About Us," "Contact," etc.

Comments: You can moderate and manage comments left by visitors on your blog posts.

Appearance: This menu contains options to customize your website's appearance using themes, widgets, menus, and the theme customizer.

Plugins: Here you can install, activate, deactivate, and configure plugins to add specific functionalities to your site.

Users: Manage user accounts and their roles on your website.

Settings: Configure general settings for your site, such as site title, tagline, site URL, permalinks, and more.

Dashboard Widgets: The main dashboard screen displays several widgets providing an overview of your site's activity, including recent posts, comments, and site statistics.

The layout and organization of the dashboard can vary depending on your installed theme and plugins. If you're new to WordPress, take some time to explore the dashboard and familiarize yourself with the various options available. As you gain experience, you'll find that the WordPress dashboard is an efficient and user-friendly tool to manage and maintain your website.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/ezgif.com-webp-to-png.png?alt=media&token=745638bd-7e97-4dec-9877-c3c5d95868fd",
        "topic": "themes and plugins",
        "para":
            '''In WordPress, themes and plugins are essential components that allow you to customize and extend the functionality of your website. Let's take a closer look at each:

Themes:
Themes are the visual and layout design templates that control the appearance of your WordPress website. They determine how your site looks to visitors, including the color scheme, typography, header, footer, and overall layout. Themes are an excellent way to give your site a unique and professional look without the need for extensive coding.
WordPress comes with a default theme that is usually pre-installed when you set up your website. However, you can easily change it to a different theme that suits your preferences or specific purposes (e.g., blogging, e-commerce, portfolio, etc.). There are thousands of free and premium themes available in the WordPress.org theme directory and various third-party theme marketplaces.

Plugins:
Plugins are software extensions that add new features and functionality to your WordPress website. They allow you to extend the core capabilities of WordPress without modifying the code directly. Whether you want to add a contact form, enhance SEO, integrate social media, create an online store, or optimize website performance, there's likely a plugin available to do the job.
Like themes, you can find plugins in the WordPress.org plugin directory, which contains a vast collection of free plugins. There are also premium plugins available from third-party developers that often offer more advanced features and dedicated support.

Adding and managing themes and plugins in WordPress is straightforward:

Adding Themes:

Log in to your WordPress Dashboard.
Go to "Appearance" and then click on "Themes."
Click the "Add New" button to access the WordPress.org theme directory or upload a theme from your computer.
Once you find a theme you like, click "Install," and then click "Activate" to make it the active theme for your site.
Adding Plugins:

Log in to your WordPress Dashboard.
Go to "Plugins" and then click on "Add New."
From here, you can search for a specific plugin or browse different categories.
Click the "Install Now" button next to the plugin you want to use, and then click "Activate" after it's installed.
Keep in mind that while themes and plugins can significantly enhance your website, it's essential to use reputable sources and regularly update them to ensure compatibility and security. Also, try to avoid installing too many plugins, as they can potentially slow down your site or cause conflicts if not properly managed. Always review user ratings, reviews, and the last update date of themes and plugins before installing them.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/post%20and%20page.png?alt=media&token=6ad7da86-19cd-4882-b944-29ad4ccd2862",
        "topic": "post and page",
        "para": '''
In WordPress, "Posts" and "Pages" are two fundamental content types used to create and organize content on your website. While they may seem similar, they serve different purposes and are used in different contexts.

Posts:
Posts are typically used for regularly updated content, such as blog entries, news articles, or any content with a time-sensitive nature. They are displayed in reverse chronological order, with the latest post appearing at the top of the list. Posts are commonly associated with categories and tags, which help to organize and group related content together.

Key features of posts:

Time-sensitive: Posts are meant to be published with a date and time, and they often contain news, updates, or articles that remain relevant for a specific period.
Dynamic content: Posts can appear on the blog page and in RSS feeds, making them suitable for content that you want to share with your audience regularly.
Social sharing: Most social sharing plugins focus on sharing individual posts, making them great for content that you want to promote on social media.
Pages:
Pages, on the other hand, are static and are used for creating timeless content that doesn't change frequently, such as "About Us," "Contact," "Services," or "Privacy Policy" pages. Pages are not listed in reverse chronological order and are not categorized like posts. Instead, they are usually organized in a hierarchical structure, allowing you to create parent and child pages for better navigation.

Key features of pages:

Timeless content: Pages are suitable for content that remains relatively unchanged over time and doesn't have a specific publishing date.
Standalone content: Pages are generally not displayed in the same way as posts on the main blog page or in RSS feeds. They are more like standalone pieces of information.
Organization: Pages allow you to create a logical hierarchy, making it easier for visitors to navigate through your site and find relevant information.
To create a new post or page in WordPress:

Creating a New Post:

Log in to your WordPress Dashboard.
Go to "Posts" and click on "Add New."
Add a title and content to your post.
You can format the text, add media (images, videos, etc.), and apply categories and tags to organize your content.
Once you're ready, click "Publish" to make your post live on your website.
Creating a New Page:

Log in to your WordPress Dashboard.
Go to "Pages" and click on "Add New."
Add a title and content to your page.
You can also format the text and add media to enhance your page's visual appeal.
When you're finished, click "Publish" to make your page accessible to visitors.
Remember that both posts and pages can be edited and updated at any time, and WordPress allows you to manage and organize your content effectively to create a cohesive and user-friendly website.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/media.jpeg?alt=media&token=bee3e726-46b8-4fc2-a314-f207122bc7e0",
        "topic": "media management",
        "para":
            '''Media management in WordPress involves handling and organizing various types of media files, such as images, videos, audio files, and documents, that you upload to your website. Having a well-structured media library is essential for easy retrieval and usage of media across your site's content. WordPress provides several features and options to manage your media efficiently:

1. Media Library:
The Media Library is the central hub where all your uploaded media files are stored. To access it, go to your WordPress Dashboard, click on "Media" and then "Library." From here, you can view all your media files, search for specific items, and filter them based on date, type, or media category.

2. Uploading Media:
You can upload media files in various ways:

Drag and drop: Simply drag the file from your computer and drop it onto the Media Library page.
Add New: Go to "Media" > "Add New" and upload files using the file uploader.
When writing a post or page: You can also upload media directly from the post/page editor using the "Add Media" button.
3. Media Editing:
WordPress provides basic image editing capabilities, such as cropping, rotating, scaling, and flipping images. When you upload an image, you can click on the "Edit Image" button to access these editing options.

4. Media Attachments:
Media files can be attached to specific posts or pages. When you upload media from the post/page editor, WordPress will attach it to that particular content, making it easier to manage and display related media.

5. Media Settings:
Under "Settings" > "Media," you can customize settings related to media, such as image sizes, how images are organized in folders, and whether to embed media files into the content or link them directly.

6. Media Categories and Tags:
Similar to how you organize posts with categories and tags, you can use media categories and tags to classify and group media files. This can help you quickly find specific media items when needed.

7. Featured Images:
When writing a post or page, you can set a "Featured Image," which represents the main image for that content. The featured image is often used in themes to represent the post or page in various places, such as the blog homepage or category pages.

8. Media Optimization:
To ensure your website's performance and loading times are not negatively impacted by large media files, you should optimize your images and other media for the web. There are various plugins and tools available to compress and resize images without compromising quality.

9. Media Plugins:
There are numerous plugins available that enhance media management capabilities, provide galleries, lightboxes, and other advanced media display options, making it easier to showcase your media content.

By effectively managing your media library, you can keep your website organized, ensure a smooth user experience, and efficiently use media in your posts and pages.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/user.jpg?alt=media&token=86c5b2f2-ca2e-4153-b946-faa11015b492",
        "topic": "user management",
        "para":
            '''User management refers to the processes and procedures involved in administering and controlling user accounts within a system or organization. This typically includes creating, modifying, and deleting user accounts, as well as assigning appropriate permissions and access rights to different resources and services. User management is a crucial aspect of information security and plays a significant role in maintaining the confidentiality, integrity, and availability of data and systems.

Key components of user management often include:

User Account Creation: The process of setting up new user accounts within the system. This involves collecting necessary information about the user and defining their access rights and privileges based on their roles and responsibilities.

User Authentication: Verifying the identity of users before allowing them access to the system. This can involve various methods like passwords, two-factor authentication (2FA), biometrics, etc.

User Authorization: Determining the actions and resources that a user is allowed to access based on their role and permissions.

User Access Control: Ensuring that users can only access the information and perform the tasks that are necessary for their job responsibilities. This often involves defining roles, groups, and access levels.

User Deactivation and Removal: Managing the process of disabling or deleting user accounts when they are no longer needed or when an employee leaves the organization.

Password Management: Enforcing password policies, including requirements for strong passwords, regular password changes, and password recovery procedures.

User Auditing and Logging: Keeping track of user activities and changes made to user accounts for security and compliance purposes.

User Training and Education: Providing users with necessary training and education on security best practices and how to use the system securely.

Role-Based Access Control (RBAC): Implementing a system where access to resources is granted based on the user's role within the organization.

Single Sign-On (SSO): Allowing users to access multiple applications or services with a single set of login credentials.

Effective user management is essential for preventing unauthorized access, data breaches, and other security incidents. It also helps in maintaining accountability and traceability within the system. Many organizations use dedicated user management systems or leverage features provided by identity and access management (IAM) platforms to handle these tasks efficiently.'''
      },
      {
        "img":
            "https://firebasestorage.googleapis.com/v0/b/the-lerners.appspot.com/o/seo.jpg?alt=media&token=268821ea-dc30-42eb-9126-9efd89cde330",
        "topic": "Search Engine Optimization (SEO) for WordPress:",
        "para": '''
Search Engine Optimization (SEO) for WordPress is the process of optimizing your WordPress website to improve its visibility and ranking in search engine results. When your site is optimized for search engines, it is more likely to appear higher in search engine results pages (SERPs) for relevant keywords and phrases, which can lead to increased organic (non-paid) traffic.

Here are some essential SEO practices for WordPress:

Quality Content Creation: Create high-quality, valuable, and engaging content that aligns with the interests of your target audience. Regularly publish new blog posts, articles, or other content types that address popular topics and answer common questions related to your niche.

Keyword Research: Perform keyword research to identify relevant and high-traffic keywords that your target audience is searching for. Use tools like Google Keyword Planner, SEMrush, or Ahrefs to find suitable keywords for your content.

Optimize Titles and Meta Descriptions: Craft compelling and keyword-rich titles and meta descriptions for your blog posts and pages. These elements appear in search results and influence click-through rates.

Use SEO Plugins: Install and configure popular SEO plugins like Yoast SEO or All in One SEO Pack. These plugins help you optimize individual posts and pages by providing recommendations and analyzing your content for SEO best practices.

Optimize URLs: Ensure your URLs are user-friendly and include relevant keywords. Avoid using long strings of numbers or irrelevant characters in your URLs.

Image Optimization: Compress images to reduce their file size and use descriptive alt text to help search engines understand the content of your images. This can improve your website's accessibility and image search visibility.

Mobile Responsiveness: Ensure your WordPress website is mobile-friendly and provides a seamless user experience across different devices. Mobile-friendliness is a critical factor for search engine rankings.

Page Speed Optimization: Optimize your website's loading speed by using caching plugins, optimizing images, and choosing a reliable hosting provider. Faster-loading websites tend to rank higher in search results.

Internal Linking: Interlink your blog posts and pages using relevant anchor text. Internal linking helps search engines discover and index your content while also improving user navigation on your site.

External Linking: Include outbound links to authoritative and relevant sources. Linking to reputable websites can add credibility to your content and improve search engine rankings.

SSL Certificate: Ensure your website has an SSL certificate installed. SSL encryption is essential for securing user data and is considered a ranking factor by search engines.

Social Media Integration: Integrate social media sharing buttons into your content to encourage users to share your posts, which can help increase your content's visibility and potential backlinks.

Remember that SEO is an ongoing process, and it may take some time to see significant results. Consistently following these best practices will gradually improve your WordPress site's search engine visibility and organic traffic.'''
      },
    ],
    [
      {
        "question": "1. What is the primary purpose of WordPress?",
        "option1": "A. To create and manage databases",
        "option2": "B. To develop mobile applications",
        "option3": "C. To build and manage websites and blogs",
        "option4": "D. To create 3D animations",
        "answer": "C. To build and manage websites and blogs"
      },
      {
        "question": "2. How can you install a new theme in WordPress?",
        "option1": "A. By copying the theme files to the server",
        "option2": "B. By purchasing a theme from the WordPress theme store",
        "option3": "C. By using the theme installer in the WordPress dashboard",
        "option4": "D. All of the above",
        "answer": "C. By using the theme installer in the WordPress dashboard",
      },
      {
        "question": "3. What is the purpose of a WordPress plugin?",
        "option1": "A. To modify the appearance of a website",
        "option2": "B. To extend the functionality of WordPress",
        "option3": "C. To create user accounts",
        "option4": "D. To manage media files",
        "answer": "B. To extend the functionality of WordPress",
      },
      {
        "question":
            "4. Which of the following is true about WordPress categories?",
        "option1": "A. Categories are used to organize media files",
        "option2": "B. Categories are used for creating custom post types",
        "option3":
            "C. Categories are hierarchical and used for organizing content",
        "option4": "D. Categories are the same as tags",
        "answer":
            "C. Categories are hierarchical and used for organizing content",
      },
      {
        "question": "5. What is the purpose of the WordPress REST API?",
        "option1": "A. To optimize the performance of a WordPress website",
        "option2": "B. To improve search engine rankings",
        "option3":
            "C. To allow communication with other applications and systems",
        "option4": "D. To add custom meta tags to posts",
        "answer":
            "C. To allow communication with other applications and systems",
      },
      {
        "question": "6. How can you create a new page in WordPress?",
        "option1":
            "A. By using the 'New Post' option in the WordPress dashboard",
        "option2":
            "B. By using the 'Add Page' option in the WordPress dashboard",
        "option3": "C. By creating a new post and selecting the 'Page' option",
        "option4": "D. Pages cannot be created in WordPress",
        "answer":
            "B. By using the 'Add Page' option in the WordPress dashboard",
      },
      {
        "question": "7. Which of the following is not a WordPress user role?",
        "option1": "A. Subscriber",
        "option2": "B. Administrator",
        "option3": "C. Editor",
        "option4": "D. Manager",
        "answer": "D. Manager",
      },
      {
        "question": "8. What is the purpose of a child theme in WordPress?",
        "option1":
            "A. To modify the appearance of a theme without affecting the parent theme",
        "option2": "B. To create a new theme from scratch",
        "option3": "C. To add new user roles",
        "option4": "D. To optimize website performance",
        "answer":
            "A. To modify the appearance of a theme without affecting the parent theme",
      },
      {
        "question":
            "9. Which programming language is primarily used to develop WordPress?",
        "option1": "A. PHP",
        "option2": "B. JavaScript",
        "option3": "C. Python",
        "option4": "D. Ruby",
        "answer": "A. PHP",
      },
      {
        "question": "10. What is the purpose of permalinks in WordPress?",
        "option1": "A. To set the default font for the website",
        "option2": "B. To control the visibility of posts and pages",
        "option3": "C. To create human-readable URLs for posts and pages",
        "option4": "D. To add custom CSS to the website",
        "answer": "C. To create human-readable URLs for posts and pages",
      },
      {
        "question": "11. How can you add custom CSS to a WordPress website?",
        "option1": "A. By modifying the theme files directly",
        "option2": "B. By using the 'Customizer' in the WordPress dashboard",
        "option3": "C. By installing a CSS plugin",
        "option4": "D. All of the above",
        "answer": "B. By using the 'Customizer' in the WordPress dashboard",
      },
      {
        "question":
            "12. Which of the following is NOT a recommended way to improve WordPress security?",
        "option1": "A. Using strong passwords",
        "option2": "B. Regularly updating themes and plugins",
        "option3": "C. Installing security plugins",
        "option4": "D. Disabling automatic backups",
        "answer": "D. Disabling automatic backups",
      },
      {
        "question":
            "13. What is the purpose of the WordPress Gutenberg editor?",
        "option1": "A. To optimize images for the web",
        "option2": "B. To improve website loading speed",
        "option3":
            "C. To provide a block-based content editor for posts and pages",
        "option4": "D. To add Google Analytics tracking code",
        "answer":
            "C. To provide a block-based content editor for posts and pages",
      },
      {
        "question": "14. What does the term 'shortcode' refer to in WordPress?",
        "option1":
            "A. A short piece of code used to modify the WordPress core files",
        "option2": "B. A special tag used to customize a theme",
        "option3":
            "C. A snippet of code used to display dynamic content within posts and pages",
        "option4": "D. A code snippet used to improve website performance",
        "answer":
            "C. A snippet of code used to display dynamic content within posts and pages",
      },
      {
        "question": "15. How can you create a navigation menu in WordPress?",
        "option1":
            "A. By using the 'Navigation' section in the WordPress dashboard",
        "option2": "B. By installing a navigation plugin",
        "option3": "C. By using the 'Menus' section in the WordPress dashboard",
        "option4": "D. Menus are automatically created in WordPress",
        "answer": "C. By using the 'Menus' section in the WordPress dashboard",
      },
      {
        "question": "16. What is the purpose of WordPress widgets?",
        "option1": "A. To display advertisements on a website",
        "option2": "B. To provide website analytics",
        "option3":
            "C. To add functionality and content to widget-ready areas of a website",
        "option4": "D. To improve website security",
        "answer":
            "C. To add functionality and content to widget-ready areas of a website",
      },
      {
        "question":
            "17. How can you optimize your WordPress website for better performance?",
        "option1": "A. By using large image files",
        "option2": "B. By using a caching plugin",
        "option3": "C. By installing as many plugins as possible",
        "option4": "D. All of the above",
        "answer": "B. By using a caching plugin",
      },
      {
        "question": "18. What is the purpose of WordPress categories and tags?",
        "option1": "A. To organize posts and pages by date",
        "option2": "B. To enhance website security",
        "option3": "C. To organize and group similar content",
        "option4": "D. To optimize images for the web",
        "answer": "C. To organize and group similar content",
      },
      {
        "question":
            "19. Which of the following is an example of a WordPress custom post type?",
        "option1": "A. Blog",
        "option2": "B. Page",
        "option3": "C. Product",
        "option4": "D. Category",
        "answer": "C. Product",
      },
      {
        "question": "20. What does the term 'multisite' refer to in WordPress?",
        "option1": "A. A website with multiple pages",
        "option2": "B. A WordPress website with multiple plugins installed",
        "option3":
            "C. A network of multiple WordPress sites sharing a single installation",
        "option4": "D. A website with multiple administrators",
        "answer":
            "C. A network of multiple WordPress sites sharing a single installation",
      },
      {
        "question": "21. What is the purpose of WordPress user roles?",
        "option1": "A. To determine the website's domain name",
        "option2": "B. To control access and permissions for users",
        "option3": "C. To manage website backups",
        "option4": "D. To optimize the website's loading speed",
        "answer": "B. To control access and permissions for users"
      },
      {
        "question": "22. What is the purpose of WordPress permalinks?",
        "option1": "A. To control the visibility of posts and pages",
        "option2": "B. To optimize website performance",
        "option3": "C. To display the website's logo",
        "option4": "D. To create human-readable URLs for posts and pages",
        "answer": "D. To create human-readable URLs for posts and pages",
      },
      {
        "question":
            "23. Which programming language is primarily used to develop WordPress themes?",
        "option1": "A. HTML",
        "option2": "B. CSS",
        "option3": "C. PHP",
        "option4": "D. JavaScript",
        "answer": "C. PHP",
      },
      {
        "question": "24. How can you add custom CSS to a WordPress website?",
        "option1": "A. By modifying the theme files directly",
        "option2": "B. By using the 'Customizer' in the WordPress dashboard",
        "option3": "C. By installing a CSS plugin",
        "option4": "D. All of the above",
        "answer": "B. By using the 'Customizer' in the WordPress dashboard",
      },
      {
        "question":
            "25. Which of the following is NOT a recommended way to improve WordPress security?",
        "option1": "A. Using strong passwords",
        "option2": "B. Regularly updating themes and plugins",
        "option3": "C. Installing security plugins",
        "option4": "D. Disabling automatic backups",
        "answer": "D. Disabling automatic backups"
      }
    ],
  ];
}
