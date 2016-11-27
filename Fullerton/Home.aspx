<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Fullerton.Home" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="windows-1256">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Finnovatica</title>

    <meta name="description" content="">
    <meta name="author" content="">

    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


    <!-- **CSS - stylesheets** -->
    <link id="default-css" href="style.css" rel="stylesheet" media="all" />
    <link id="shortcodes-css" href="css/shortcodes.css" rel="stylesheet" media="all" />
    <link href="css/responsive.css" rel="stylesheet" media="all" />

    <!-- **Additional stylesheets** -->
    <link href="css/isotope.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/animations.css" rel="stylesheet" media="all" />

    <!-- **Skin stylesheet** -->
    <link id="skin-css" href="skins/yellow/style.css" rel="stylesheet" media="all" />

    <!-- **Font Awesome** -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- **Pace** -->
    <link rel="stylesheet" href="css/pace-theme-big-counter.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script src="DashBoard/Jscripts/jquery-ui-1.12.1.js"></script>
    <link href="DashBoard/Jscripts/jquery-ui-1.12.1.css" rel="stylesheet" />
    <script src="js/modernizr-2.6.2.min.js"></script>

    <script type="text/javascript" src="js/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="js/jquery-easing-1.3.js"></script>
    <script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>

    <script type="text/javascript" src="js/jquery.parallax.min.js"></script>
    <script type="text/javascript" src="js/toucheffects.min.js"></script>

    <script type="text/javascript" src="js/jquery.sticky.min.js"></script>
    <script type="text/javascript" src="js/jquery.nav.min.js"></script>

    <script type="text/javascript" src="js/jquery.tabs.min.js"></script>
    <script type="text/javascript" src="js/plugins.min.js"></script>

    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script type="text/javascript" src="js/jquery.touchSwipe.min.js"></script>
    <script type="text/javascript" src="js/twitter/jquery.tweet.min.js"></script>

    <script src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/jquery.isotope.perfectmasonry.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.min.js"></script>

    <script src="js/jquery.bxslider.min.js" type="text/javascript"></script>
    <%-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script>--%>
    <script src="js/jquery.gmap.min.js"></script>
    <script src="Scripts/DateFormat.js"></script>

    <script type="text/javascript" src="js/retina.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>

    <script type="text/javascript" src="js/custom.js"></script>

</head>

<body>
    <div class="wrapper">
        <div class="inner-wrapper type-1">
            <header id="header" class="dt-sticky-menu">
                <div id="menu-container">
                    <div class="container">
                        <div id="logo">
                            <a class="w-img-h" href="">
                                <img class="for_default" src="images/fullerton-india-logo.png" width="170" height="50" alt="finnovatica1" /></a>
                        </div>
                        <nav id="main-menu">
                            <div id="dt-menu-toggle" class="dt-menu-toggle">
                                Menu
                               
                                <i class="fa fa-bars"></i>
                            </div>
                            <ul id="menu">
                                <li class="current_page_item"><a href="#home">Home</a> </li>
                                <li><a href="#about">About</a> </li>
                                <li><a href="#works">Thought Starters</a> </li>
                                <li><a href="#services">TERMS & CONDITIONS</a> </li>
                                <li><a href="#team">FAQs</a> </li>
                                <li><a href="#blog">Blog</a> </li>
                                <li><a href="#contact">Contact</a> </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </header>
            <div id="main" class="top-slider">
                <section id="home" class="content">
                    <div class="banner fullwidth-section dt-sc-parallax-section">
                        <div class="container">
                            <div class="caption">
                                <h2 style="font-size: 21px; line-height: 1.1; text-align: center; font-family: Lato; font-weight: 700; font-style: normal"
                                    class="vc_custom_heading">Fullerton India Credit Co.Ltd Presents</h2>
                                <div class="w-image align_center">
                                    <div class="us-frame">
                                        <img width="180" height="42" src="images/finnovatica1.png"
                                            class="attachment-full size-full" alt="finnovatica1" />
                                    </div>
                                </div>
                                <h3 style="font-size: 20px; line-height: 1.1; text-align: center; font-family: Lato; font-weight: 100; font-style: normal"
                                    class="vc_custom_heading">"Nurturing Innovation Through Collaboration" </h3>
                                <br />
                                <br />
                                <a href="#Login" class="dt-sc-button small type1">Login Here</a>

                                <a href="SignUp.aspx" class="dt-sc-button small type1">Register Here </a>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="about" class="content">
                    <div class="service-sliders">

                        <div class="dt-sc-service-carousel">
                            <div class="dt-sc-carousel-wrapper">
                                <ul class="dt-sc-carousel">
                                    <li class="dt-sc-service">
                                        <h2 style="text-align: center">About Finnovatica </h2>
                                        <p style="text-align: left">Fullerton India is one of the fastest growing NBFC's in the country with a customer base crossing 1.4 million and presence across 21 states of the country reaching deep into Tier 3 and 4 locations. Along with the traditionally targeted customer segments and product offerings, Fullerton India has continuously looked into expanding its reach further into the customer needs and thus opened a housing finance company as a wholly owned subsidiary in the last financial year.</p>
                                    </li>
                                    <li class="dt-sc-service">
                                        <h2 style="text-align: center">About Finnovatica</h2>
                                        <p style="text-align: left">The current wave of digital innovation in banking and financial industry has started making its presence felt in the Indian market. FICC has invested heavily in analytics and research over the past few years, whereas technology investments in new core systems have also been made, as a part of the company's vision of becoming a technology leader in the retail lending space. </p>
                                    </li>
                                    <li class="dt-sc-service">
                                        <h2 style="text-align: center">About Finnovatica </h2>
                                        <p style="text-align: left">This initiative aims to leverage India's young, tech-savvy and bright minds who have excellent ideas, but may lack the financing or guidance, by engaging with them through its program “Fullerton India Finnovatica”. </p>
                                    </li>
                                </ul>
                                <div id="pager">
                                    <a href=""></a>
                                    <a href=""></a>
                                    <a href=""></a>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="dt-sc-clear"></div>
                    <div class="dt-sc-hr medium"></div>
                    <div class="dt-sc-hr-invisible-large"></div>
                    <div class="container">
                        <div class="dt-sc-one-third column first">
                            <div class="dt-sc-ico-content type1 animate" data-animation="fadeInUp" data-delay="200">
                                <div class="icon">
                                    <span class="fa fa-cubes"></span>
                                </div>
                                <h5><a target="_blank" href="#">Genesis</a></h5>
                                <div style="text-align: left">
                                    <ui>
    <li> We launch the program at your campus You can register here as a team*</li>
	  <li> Login and upload your ideas in the form of a 1 pager Concept Note. </li>
	    <li>  Teams with the most promising ideas will be given a certificate and assigned a business mentor from within the organization.</li>   
  </ui>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-one-third column">
                            <div class="dt-sc-ico-content type1 animate" data-animation="fadeInUp" data-delay="300">
                                <div class="icon">
                                    <span class="fa fa-cogs"></span>
                                </div>
                                <h5><a target="_blank" href="#">Appathon</a></h5>
                                <div style="text-align: left">
                                    <ui>
    <li> Selected Teams work on refining their ideas with the help of business mentors </li>
	  <li> Prepare a detailed presentation and a prototype (wireframes, cardboard models, etc.)</li>
	    <li> Present both at the Appathon event of Finnovatica in Mumbai to an eminent jury panel.</li>   
		<li> Selected teams win cash award*</li>   
  </ui>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-one-third column">
                            <div class="dt-sc-ico-content type1 animate" data-animation="fadeInUp" data-delay="400">
                                <div class="icon">
                                    <span class="fa fa-cubes"></span>
                                </div>
                                <h5><a target="_blank" href="#">Final Arena</a></h5>
                                <div style="text-align: left">
                                    <ui>
    <li> Qualified teams work on a project development plan.</li>
	  <li> Financial resources, timelines and milestones to be mutually agreed upon</li>
	    <li>Cash award to the team post project plan approval. </li>   
		<li> Develop the project under supervision of business mentors. </li>   
		<li> Demonstrate the project at the Grand Finale </li>
		<li> Chance to win between INR 10-25 lakhs; support for teams interested in entrepreneurship </li>
  </ui>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="dt-sc-hr-invisible-large"></div>
                    <div class="counter-parallax fullwidth-section dt-sc-parallax-section">
                        <div class="container">
                            <div class="dt-sc-one-fourth column first">
                                <div class="dt-sc-services animate" data-animation="fadeInUp" data-delay="200">
                                    <h5>Genesis </h5>
                                    <div style="text-align: left">
                                        <ui>
    <li> Campus Launch: Jan 28 – Feb 20, 2017</li>
	  <li>  Closure of Registrations: Mar, 2017</li>
	    <li>  Closure of idea submission: Apr, 2017</li>
		  <li> Idea Evaluation: May, 2017</li>
		    <li> Results of idea evaluation: Jun, 2017</li>
			   
  </ui>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-one-fourth column">
                                <div class="dt-sc-services animate" data-animation="fadeInUp" data-delay="300">
                                    <h5>Appathon </h5>
                                    <div style="text-align: left">
                                        <ui>
    <li>  Preparation of prototype and presentation by teams: Jun, 2017</li>
	  <li>  Appathon @Mumbai: Jul, 2017</li>
	    <li> Declaration of results: Jul, 2017</li>
		  
			   
  </ui>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-one-fourth column">
                                <div class="dt-sc-services animate" data-animation="fadeInUp" data-delay="400">
                                    <h5>Final Arena</h5>
                                    <div style="text-align: left">
                                        <ui>
    <li> Project plan closure – Aug, 2017</li>
	  <li>  Product Development – up to Nov, 2017</li>
	    <li> Completion of product development – Dec, 2017</li>
		 <li> Final Presentation – Jan, 2018</li>
		  
			   
  </ui>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="service-parallax fullwidth-section dt-sc-parallax-section aligncenter">
                        <div class="container">
                            <h4 style="text-align: center">Awards and Recognition </h4>
                            <div class="dt-sc-service-boxes animate" data-animation="fadeInUp" data-delay="100">

                                <div class="dt-sc-one-fifth column no-space first">
                                    <div class="dt-sc-ico-content type5 two">
                                        <h5></h5>
                                        <div class="dt-sc-content">
                                            <i class="fa fa-apple"></i>
                                            <p>Certificate of Appreciation for every student who clears the Genesis round.  </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dt-sc-one-fifth column no-space first">
                                    <div class="dt-sc-ico-content type5 three">
                                        <h5></h5>
                                        <div class="dt-sc-content">
                                            <i class="fa fa-suitcase"></i>
                                            <p>INR 30,000 cash award to every team which clears the Appathon Round   </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dt-sc-one-fifth column no-space first">
                                    <div class="dt-sc-ico-content type5 four">
                                        <h5></h5>
                                        <div class="dt-sc-content">
                                            <i class="fa fa-camera"></i>
                                            <p>INR 20,000 cash award to every team whose project plans are accepted  </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dt-sc-one-fifth column no-space first">
                                    <div class="dt-sc-ico-content type5 five">
                                        <h5></h5>
                                        <div class="dt-sc-content">
                                            <i class="fa fa-cog"></i>
                                            <p>INR 15,000 cash award to every team for achieving a milestone   </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dt-sc-one-fifth column no-space first">
                                    <div class="dt-sc-ico-content type5 one">
                                        <h5></h5>
                                        <div class="dt-sc-content">
                                            <i class="fa fa-cog"></i>
                                            <p>Winners of the Final Arena stand to win between INR 10,00,000 – 25,00,000 </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="works" class="content">
                    <div class="dt-sc-hr-invisible-large"></div>
                    <div class="container">
                        <div class="dt-sc-services-boxes">
                            <div class="dt-sc-one-half column first">
                                <div class="dt-sc-ico-content-right">
                                    <div class="dt-sc-ico-content type2">
                                        <div class="icon">
                                            <span class="fa fa-desktop"></span>
                                        </div>
                                        <div class="dt-sc-content animate" data-animation="fadeInLeft" data-delay="200">
                                            <h5></h5>
                                            <p>Fullerton India Credit Company is a Non-Banking Financial Company (NBFC). We aim to help customers with a wide range of lending products such as commercial loans, vehicle loans, personal loans, loan against property, SME loans, and so on. Unlike Banks, NBFCs don't accept deposits (savings account/current account) from their customers.  </p>
                                        </div>
                                    </div>
                                    <div class="dt-sc-hr-invisible-toosmall"></div>
                                    <div class="dt-sc-ico-content type2">
                                        <div class="icon">
                                            <span class="fa fa-headphones"></span>
                                        </div>
                                        <div class="dt-sc-content animate" data-animation="fadeInLeft" data-delay="200">
                                            <h5></h5>
                                            <p>Lending has been a primary facet of our society, ever since the days of money-lenders. Every individual or company looks for a viable credit solution so as to gain the best possible advantage in his/her current situation. For instance, a salaried person may prefer purchasing a vehicle on loan rather than risk using up all of his savings at once.   </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-one-half column">
                                <div class="dt-sc-ico-content-left">
                                    <div class="dt-sc-ico-content type2">
                                        <div class="icon">
                                            <span class="fa fa-empire"></span>
                                        </div>
                                        <div class="dt-sc-content animate" data-animation="fadeInRight" data-delay="200">
                                            <h5></h5>
                                            <p>Similarly, companies in the MSME sector often find themselves facing hurdles due to non-availability of working capital. At the same time, being small players or in rural areas, they may not be able to easily access lenders who could meet their needs. Alternately, corporates may face issues in balancing their financing and accounting hurdles. </p>
                                        </div>
                                    </div>
                                    <div class="dt-sc-hr-invisible-toosmall"></div>
                                    <div class="dt-sc-ico-content type2">
                                        <div class="icon">
                                            <span class="fa fa-camera"></span>
                                        </div>
                                        <div class="dt-sc-content animate" data-animation="fadeInRight" data-delay="200">
                                            <h5></h5>
                                            <p>At Fullerton India, our primary focus is on using the latest technologies to develop solutions and redefine the business of lending. Can you think of mobile applications which could help us acquire more clients for loans, improve the disbursement process, help us communicate with consumers better, reduce paperwork, etc? </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="what-we-do">
                                <h4>Thought
                                    <br>
                                    Starters   </h4>
                            </div>
                        </div>
                        <br />
                        <p>
                            Here is a set of problem statements. Please note that these are merely pointers, and other promising ideas pertaining to technology innovation will also be welcomed.
                        </p>
                        <div class="column dt-sc-one-half first">
                            <div class="dt-sc-hr-invisible-toosmall"></div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Loan processing</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                When processing loan applications, financial institutions require companies to transmit a number of documents. These documents need to be submitted in original version (paper) and witnessed by a lawyer/notary. The process of this paper based documentation is cumbersome, resource-heavy and therefore expensive. As a result, small companies are underserved because this process is expensive.
Develop a platform and/or standard that would enable digital exchange, signature and authentication of notary documents. This platform may also be used for board resolutions, credit facilities as well as other forms of contracts.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Passwords/User Authentication</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Customers often rely on weak or common passwords across services as they struggle to keep track of complex passwords and authentication methods. Other than passwords, customers have to use many authentication tokens, each for a different purpose. 
Propose a different approach to authentication that does not depend on passwords, cumbersome 2FA methods or would not require financial institutions to invest separately in authentication infrastructure.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Personal Financial Management Tools</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Consumers still lack guidance on how to better manage their finances. 
Develop a comprehensive personal financial management tool that would enable consumers to understand the fundamentals of personal finance as well as the benefits of sound financial management in exchange for instant gratification. This tool should go beyond income and expenditure management to include tax planning and the planning of life events such as home ownership, marriage and saving for retirement.

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Mobile Gaming</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Parents feel that either they or their children are spending a lot of money on mobile apps including gaming apps.
Create a free-to-play mobile game (with in-app purchases). The proceeds of in-app purchases would be placed into an investment vehicle and/or a personal account. After a certain amount of funds have been accumulated, the Financial Institution running the game would provide tools that would enable customers to reinvest and manage these funds

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Non-traditional data sources for effective underwriting</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Existing credit underwriting models do not leverage new sources of qualitative and quantitative information, both for individuals and small-and-medium enterprises (“SMEs”). 
Find a solution that would leverage non-traditional data sources to selectively refine existing under-writing models (rather than re-write them). This would enable Financial Institutions to lend to new customers that they would have rejected before. 

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Innovative solutions to promote financial literacy among young adults</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Costs of living in Asia have risen, pension systems in most parts of Asia are not effective, and inflation is high. If a young adult doesn't invest for the future, they may find themselves not being able to support retirement when it finally comes. The key inhibitor in reluctance to invest is low financial literacy, leading to conservatism in managing personal assets
Develop a creative and engaging tool, game or app that provides basic financial literacy education at strategic points in early life education or young adult life.

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column dt-sc-one-half">
                            <div class="dt-sc-hr-invisible-toosmall"></div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Inventory management for SME and MSME's</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                SME/MSME clients form a large existing/potential customer base for FICC. In the rural and semi urban areas these individuals continue to rely on paper-based methods to reconcile payments and accounts, manage their inventory/orders, manage supply of raw material and the overall supply chain. 
Develop a full product suite for SMEs to manage their purchase orders, invoices and cash flows, the solution should be taking into account key factors like the education level and preferred languages of the target segment.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Digital Wallets</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Technologists expect 2016 to be the year of the mobile wallets. The offerings among current wallets are very similar and undifferentiated. 
From a consumer perspective, even people having 5 to 6 cards per person comprising of mainly debit and credit cards are interested in utilizing the mobile/smartphones for secured mobile financial services. Find an idea to enhance the value proposition of the mobile wallet to create customer stickiness, promote mobile centric lifestyle and give individuals a compelling reason to stay with the mobile wallet ecosystem. Some suggestions could include loyalty, couponing/discounts, real time redemptions that add further value beyond the simple payment solution.

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Reports</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Financial institutions produce thousands of reports for their customers. Although the production of these reports is automated, the translation of these into the customer's local language is manual, costly and time consuming.
Develop a semi-automated translation solution for Financial Institutions that enables efficient review and workflow validation.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Data Privacy</a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p>
                                                Institutions could derive great insights from overlaying data from different types of data sources. Data sharing will drive innovations in Big Data. However data privacy and security discourages firms from sharing and exchanging data.
Develop a solution that would mask confidential information, attribute data a common key so that information can be aggregated and exchanged without breaching customer confidential information.

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="dt-sc-toggle-frame">
                                <a href="#" class="dt-sc-toggle">Some broad areas participants may focus on for delivering the solutions to the above </a>
                                <div class="dt-sc-toggle-content">
                                    <div class="block">
                                        <div>
                                            <p><span style="font-weight: bold">Mobile Applications:</span>    With the widespread use of smart phones across the country (including rural areas), mobile applications is one of the best channels to reach out to customers. </p>
                                            <p>
                                                <b style="font-weight: bold">Web Applications:</b> A recent study has indicated that while mobile apps are here to stay, certain applications can only be effective when used via the web. As a result, a few popular e-commerce companies are speculating on taking down their mobile apps and remaining a pure web service. 
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Social Media Applications:</b> Social media is becoming one of the most powerful channels in today's world. Applications such as Whatsapp, FaceBook, SnapChat, etc. have reduced the world into a tiny place. Leveraging these applications to reach out to customers, and enable them in performing transactions (individually or as a group) could be the next big thing.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Big Data Analytics:</b> Personalized services can only be provided to customers when service organizations have sufficient information available and powerful algorithms to make intelligent analyses. Developing products which can perform such tasks instantaneously by analyzing data from a vast number of resources dynamically could raise customer service levels to heights which had never even been imagined before.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Cloud Computing:</b> As the world gets larger, the cost of infrastructure rises exponentially too. This realization has given birth to cloud computing. Apart from this, cloud computing also enables users to access data anywhere, anytime and in a convenient fashion. 
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Near Field Communications:</b>  This is a very popular form of data transfer, especially due to the advent of smart phones. However, security issues persist due to which many organizations refrain from developing this technology for conducting a secure transaction. 
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Cognitive Computing & Machine Learning:</b>  This technology deals with self-learning systems which grow more efficient due to data mining, pattern recognition and natural language processing similar to the way humans thing and understand.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Integrated Design:</b>  This technology deals with self-learning systems which grow more efficient due to data mining, pattern recognition and natural language processing similar to the way humans thing and understand.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Green Technologies:</b>   Reducing one's carbon footprint remains a challenge in today's world. The existing green technologies are quite expensive and difficult to scale in today's business environment, which make them an unpopular (but a non-optional choice). Developing products and technologies which could help organizations overcome this hurdle could be a huge game changer.  Also, ideas which could help organizations consume less power, reduce paperwork, and use IT infrastructure with efficient usage of processing power are in demand.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Do-it-Yourself Enablers:</b>  Like ATMs have revolutionized the banking industry, more such kiosks or devices which can help customers perform transactions without the requirement of human intervention are being sought after. Developing machines with an effective design which can help any and every kind of customer across all markets in India perform simple tasks without the need of human intervention could greatly help NBFCs improve their productivity.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Chat Bots:</b> The use of artificial chat agents is widely used today to help customers answer any basic questions they may have. These chat agents are powered with algorithms that use natural language processing and data mining so that they become more efficient with increased usage, and interaction with a chat bot can almost resemble a human.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Blockchain:</b> Blockchain is the technological innovation of Bitcoin, and has energized the entire financial services industry across the globe. While the concept can be applied to the entire digital world, any application built with the underlying blockchain technology can help NBFCs make transactions easier, cheaper and highly secure.
                                            </p>
                                            <p>
                                                <b style="font-weight: bold">Optical Character Recognition:</b> OCR Technologies can be effectively used to convert different types of documents, such as scanned paper documents, PDF files or images captured by a digital camera into editable and searchable data. Developing applications that can seamlessly use these technologies to minimize the need for manual data entry and fraud detection will help NBFCs achieve higher efficiency in credit originations.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dt-sc-hr-invisible-large"></div>

                    <div class=" aligncenter ">
                        <div class="container">
                            <h3 class="parallax-title">our Partner's </h3>
                            <div class="dt-sc-client-carousel-wrapper">
                                <ul class="dt-sc-client-carousel">
                                    <li><a href="#" title="">
                                        <img src="images/clients/client-1.png" alt="">
                                    </a></li>
                                    <li><a href="#" title="">
                                        <img src="images/clients/client-2.jpg" alt="">
                                    </a></li>
                                    <li><a href="#" title="">
                                        <img src="images/clients/client-3.png" alt="">
                                    </a></li>
                                    <li><a href="#" title="">
                                        <img src="images/clients/client-4.png" alt="">
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="dt-sc-hr-invisible-large"></div>
                </section>

                <br />
                <section id="services" class="content">
                    <div class="dt-sc-clear"></div>
                    <div class="client-parallax fullwidth-section dt-sc-parallax-section aligncenter">
                        <div class="container">
                            <h3 class="parallax-title">Terms & Conditions </h3>
                            <span>The following terms and conditions ("Terms") shall apply to and govern Fullerton India Credit Company's Program and more specifically the Entries in the first stage of the Program. Fullerton India Credit Company may specify additional terms and conditions governing the Program from time to time and/or revise or amend the existing Terms. 
							Such amended/revised terms/ additional terms and conditions shall be communicated by Fullerton India Credit Company by hosting the same on Website or in any other manner as decided by Fullerton India Credit Company. The Participants/Teams shall be responsible for regularly reviewing these Terms including any amendments thereto as may be posted on Website. 
							 All Participants undertake to have read and understood these Terms and agree to abide by them at all times. The entire Program shall be divided into three stages  1) Genesis  2) Appathon   3) The Final Arena. Such stages shall have additional terms and conditions governing them.
                            </span>
                        </div>
                    </div>
                    <div class="dt-sc-tabs-vertical-container">
                        <ul class="dt-sc-tabs-vertical-frame">
                            <li class="animate" data-animation="fadeInDown" data-delay="200">
                                <a href="#">
                                    <div class="icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <h5>1.DEFINITIONS </h5>
                                    <h6><span>Terms & Conditions</span> </h6>
                                </a>
                            </li>
                            <li class="animate" data-animation="fadeInDown" data-delay="200">
                                <a href="#">
                                    <div class="icon">
                                        <i class="fa fa-cogs"></i>
                                    </div>
                                    <h5>2.REGISTRATION PROCESS </h5>
                                    <h6><span>Terms & Conditions</span> </h6>
                                </a>
                            </li>
                            <li class="animate" data-animation="fadeInDown" data-delay="200">
                                <a href="#">
                                    <div class="icon">
                                        <i class="fa fa-cloud-upload"></i>
                                    </div>
                                    <h5>3.TERMS OF THE PROGRAM</h5>
                                    <h6><span>Terms & Conditions</span> </h6>
                                </a>
                            </li>

                        </ul>
                        <div class="dt-sc-tabs-vertical-frame-content">
                            <div class="tab-content animate" data-animation="fadeInLeft" data-delay="200">
                                <div class="dt-sc-three-fifth column first">
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>"Applicable Laws" means the laws of India and all the statutes, rules, regulations, ordinances, notifications, orders, guidelines and policies notified or promulgated pursuant thereto and modifications thereof in force from time to time. </li>
                                        <li>"Entry/Entries" shall mean such idea / concept notes submitted by the Team with respect to this Program.</li>
                                        <li>"Institute" means an engineering/technical institution / college / university which have entered into a MOU with respect to this Program with Fullerton India Credit Company. </li>
                                        <li>"Intellectual Property" shall mean and include any right, title or interest whatsoever in, to or over any of the trademarks, patents, service marks, designs, logos, copyrights, (whether registered or unregistered), including the right to file for registration. </li>
                                        <li>"Intellectual Property Rights" means all rights, benefits, title or interest in or to any Intellectual Property, anywhere in the world (whether registered or not and including all applications for the same).  </li>
                                        <li>"Jury" means and includes all such distinguished persons as may be appointed by Fullerton India Credit Company at its sole discretion to evaluate the Entries. Their decision shall be final and binding at all stages of the Program.  </li>
                                        <li>“MOU” shall mean the Memorandum of Understanding signed between Fullerton India Credit Company and the Institute. 	"Participant/s" shall mean a member/s of the Team.   </li>
                                        <li>"Program" means the Fullerton India Finnovatica program initiated by Fullerton India Credit Company which is a platform to encourage and promote talent in educational institutions to bring forth new ideas/innovations in the banking/finance industry and to enable /help them in their commercialization. </li>
                                        <li>"Team/s or Qualified Team/s" for the purpose of this Program shall mean a group of one or more but not more than 5 students who intends to / are participating in the Program and are pursuing a full time course offered by the Institute excluding any students pursuing such course through distance learning. A company, partnership, limited liability partnership or sole proprietorship availing the facilities of incubation cell or similar facilities of an Institute may also form a Team provided that in case of a partnership or limited liability partnership all the partners should individually register for the Program.  </li>
                                        <li>"Team Coordinator" shall mean such member of the Team with whom any communication, with respect to this Program, shall be exchanged by Fullerton India Credit Company and vice versa.  </li>
                                        <li>"Program Schedule" means such timelines as set by Fullerton India Credit Company from time to time and displayed on the Website. </li>
                                        <li>"Website" means the official website of Program - http://www.FullertonIndiaFinnovatica.com/  </li>

                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-tabs-vertical-frame-content">
                            <div class="tab-content">
                                <div class="dt-sc-two-third column first">
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>The Team/s and / or Participant/s shall be required to register for the Program in such manner and by submitting such details and documents as are specified on the Website.  </li>
                                        <li>After successful registration, the Teams shall submit their detailed Entry within the Program Schedule along with all required details/data/documents etc, as may be specified by Fullerton India Credit Company from time to time. </li>
                                        <ui>
                                </div>

                            </div>
                        </div>
                        <div class="dt-sc-tabs-vertical-frame-content">
                            <div class="tab-content">
                                <div class="dt-sc-one-half column first">
                                    <h5>Criteria for Participation  </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>Notwithstanding any other criteria as may be notified on the Website, Teams must fulfill the following conditions for participation in the program- 
o	One Team cannot submit more than two (2) concept notes.  </li>
                                    </ul>
                                    <h5>Responsibilities of Fullerton India Credit Company </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>1.	Fullerton India Credit Company will 
										be responsible for and shall have the sole
										discretion to determine the following  </li>
                                        <ul>
                                            <li>Eligibility criteria for participating in the Program 
                                            </li>
                                            <li>Jury to adjudge the Entries at this stage of the Program.
                                            </li>
                                            <li>Areas of invention/ innovation which is to be covered under the Program. 
                                            </li>
                                            <li>Program Schedule at all stages of the Program within which the Teams must submit their Entry including but not limited to specifying the manner, mode, format, requisite details etc.
                                            </li>
                                        </ul>
                                        <li>2.Fullerton India Credit Company shall communicate the results to the qualifying Teams who shall proceed to the next stage. Fullerton India Credit Company shall decide the time period within which the Team/s selected by it shall be required to develop the prototype.
                                        </li>
                                        <li>3.	In the event a Team does not qualify for further stages of the Program then such Team can, within sixty (60) days of being informed of the same, apply to Fullerton India Credit Company for issuing a no objection certificate (NOC) which when granted by Fullerton India Credit Company and subject to the terms stated therein, shall enable the Team to so use the Entry so generated by it. Fullerton India Credit Company shall within ninety (90) days of receiving such application, issue the same or induct the team back into the Program at the relevant stage. 
                                        </li>
                                        <li>4.	Fullerton India Credit Company shall provide / make available such awards / benefits to the winning Teams as are detailed in the Website.
                                        </li>
                                        <li>5.	Fullerton India Credit Company reserves the sole and absolute right to invite registrations for the Program from interested participants other than students of the Institute. Such interested participants can be students of other participating engineering/technical institutes as well as third parties.
                                        </li>
                                    </ul>
                                    <h5>Representation/Warranties by the Team/Participant</h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>1.		The Qualified Team acknowledges and declares that the Entry is a novel and original work of the Qualified Team which is neither a copy nor has been previously used in any manner. The Team represents and warrants that the submitted Entry does not infringe any copyright, trademark, proprietary rights, rights of privacy or publicity, Intellectual Property Rights of any person, or any other right including but not limited to Intellectual Property Right of any third party whether in law or in equity and that the Team has full and unrestricted right to transfer the Entry to Fullerton India Credit Company, free and clear of any claims or encumbrances. Any Entry found to be copied, adapted, or otherwise not novel will be disqualified from the Program.   </li>
                                        <li>2.The Team represents that it shall be solely responsible for any taxes, duties, charges or levies to be paid to any person in connection with any money (including any prizes) they pay or receive in connection with the Program. 
                                        </li>
                                        <li>3.The Team / Participant acknowledges and agrees that it shall not 
                                        </li>
                                        <ul>
                                            <li>acquire or claim any title on any of Fullerton India Credit Company's / its affiliates Intellectual Property by virtue of the rights granted to it under these Terms or through its use of such Intellectual Property; 
                                            </li>
                                            <li>at any time, do or omit to do, anything which is likely to prejudice Fullerton India Credit Company's / its affiliates ownership of such Intellectual Property Rights;
                                            </li>
                                            <li>acquire at any time hereafter nor shall it claim or assert any right, title or interest whatsoever in, to or over any of Intellectual Property belonging to Fullerton India Credit Company/its affiliates; 
                                            </li>
                                            <li>enroll for or participate in any other program as long as it continues to participate in this Program. 
                                            </li>
                                            <li>disclose the details of Entries submitted by the Team with any third party, or with the Institute/ other participating teams at any point without prior written consent of Fullerton India Credit Company. 
                                            </li>
                                            <li>disclose Intellectual Property belonging to the Bank/its affiliates to any third party in any manner at any point of time without the prior written permission of Fullerton India Credit Company/its affiliates. 
                                            </li>

                                        </ul>
                                    </ul>
                                    <h5>Judging the Entries </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>The Entries shall be judged and short-listed by the Jury for the second stage i.e. Prototype. Fullerton India Credit Company reserves the right to ask the teams for a detailed report, presentations to be made and discussions and interviews to be conducted with the Team for such purpose.
                                        </li>
                                    </ul>
                                    <h5>Intellectual Property Rights </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>1.In case of Intellectual Property Rights violation or any damage arising out of Entry submitted under this Program, the onus, responsibility and consequences thereof shall be taken on/ borne by the Team solely and completely without any responsibility of Fullerton India Credit Company. 
                                        </li>
                                        <li>2.Fullerton India Credit Company shall have sole and exclusive ownership rights over all the submitted Entries from the stage of registration/enrollment itself. The Team grants all rights over the Entry, present and future, irrevocably to Fullerton India Credit Company. The Team understands and agrees that the Entry could be used in future by Fullerton India Credit Company for commercial/ non-commercial or any other purposes as permissible.  
                                        </li>
                                        <li>3.Fullerton India Credit Company retains ownership in any software, materials, know-how and/or methodologies developed by Fullerton India Credit Company and provided to the Team or otherwise independently developed/generated in course of carrying out the Program. To the extent that the Team utilizes any of its property (whether tangible or intangible) in connection with the Program, such property shall remain the property of Fullerton India Credit Company, and the Team shall not acquire any right, title or interest in such property.  
                                        </li>
                                    </ul>
                                    <h5>Confidentiality </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>All details, documents, data, applications, software, systems, papers, statements and business information which is communicated / submitted by Fullerton India Credit Company or any of its representatives to the Institute, Mentor/s, Teams and /or its faculty and any projects /ideas / concepts notes / prototypes submitted under this Program by the Team/s to Fullerton India Credit Company shall be regarded as confidential information ("Confidential Information").
                                        </li>
                                        <li>1. All Confidential Information shall be treated as absolutely confidential and the Institute/Team(s) irrevocably agrees and undertakes to ensure that the Institute, Participant (s) and its faculty, including Mentors shall keep the same secret and confidential and that they shall not disclose the same, in whole or in part to any person without the prior written permission of Fullerton India Credit Company. The Team agrees to ensure that its faculty and Mentors also undertake a similar obligation as contained in this clause. 
                                        </li>
                                        <li>2.The Institute/Team(s) shall ensure that the access to Confidential Information by the faculty and Mentors shall be on “need to know” basis i.e. limited to those areas where the information is required in order to perform the obligations under these Terms.  
                                        </li>
                                        <li>3.The Institute/Team(s) agrees 
                                            <ul>
                                                <li>to take all necessary action to protect the Confidential Information against misuse, loss, destruction, deletion and/or alteration. 
                                                </li>
                                                <li>not to misuse or permit misuse directly or indirectly, or commercially explore the Confidential Information for economic or any other benefit.  
                                                </li>
                                                <li>not to make or retain any copies or record of any Confidential Information other than as may be required for the performance of the Institute's obligations under the MOU.   
                                                </li>
                                                <li>to notify Fullerton India Credit Company promptly of any unauthorized or improper use or disclosure of the Confidential Information.
                                                </li>
                                                <li>to return all the Confidential Information that is in the custody of the Team upon termination/conclusion of the Program.
                                                </li>
                                            </ul>
                                        </li>
                                        <li>4.The Institute/Team(s) shall ensure that it has appropriate mechanisms and means to ensure adequate precautions to protect the privacy and confidentiality of all Confidential Information. 4.	The Institute/Team(s) shall not disclose the contents of the Terms or any details pertaining to the Program to any third party without the prior written permission of Fullerton India Credit Company. 5.	Nothing contained herein shall be applicable to any information required to be provided to any statutory / regulatory / government authority under Applicable Laws. 6.	The provisions of this clause shall survive the termination of the Terms for a period of 6 years.
                                        </li>

                                    </ul>
                                    <h5>Termination  </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>Fullerton India Credit Company, may, in its sole discretion and at any point of time, suspend/cancel the Program without giving any reason thereof and/or without giving any prior notice of the same.
                                        </li>
                                    </ul>


                                    <h5>Indemnity </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>The Team(s) / Participant(s) shall, at its own expense, indemnify, defend and hold harmless Fullerton India Credit Company/its affiliates from and against any and all liabilities suffered or incurred (including but not limited to liabilities, judgments, damages, losses, claims, costs and expenses, including attorneys fees and expenses) or any other loss that may occur to Fullerton India Credit Company/its affiliates , due to breach of any of the covenants of these Terms by the Team(s) / Participant(s).
                                        </li>
                                    </ul>


                                    <h5>Other terms & conditions  </h5>
                                    <ul class="dt-sc-fancy-list rounded-arrow">
                                        <li>Fullerton India Credit Company reserves the right to disqualify the Team without assigning any reasons thereof, if it has reasonable grounds to believe that the Team has breached any of these terms and conditions and/or does not fulfill any of the eligibility criteria as may be specified by Fullerton India Credit Company from time to time. The decision of Fullerton India Credit Company shall be final and binding in this regard. 1.	Fullerton India Credit Company shall retain all the data/details/documents etc submitted by the participating Teams at any stage of the Program and shall not be liable to return the same to such participating Teams /Institutes irrespective of the fact as to whether the participating Team qualifies for the next stage/round. 2.	Notwithstanding anything contained in the Terms or in any other document
                                        </li>
                                        <li>Under no circumstances shall Fullerton India Credit Company be liable to the Institute/Team(s) for any direct, indirect, incidental, consequential, special or exemplary damages arising with respect to the Program / activities carried on under the Terms or the termination of this Program, even if Fullerton India Credit Company has been advised of the possibility of such damages, such as, but not limited to, loss of revenue or anticipated profits or lost business. 2. Fullerton India Credit Company shall not have any liability whatsoever in case of any third party claims, demands, suit, actions, or other proceedings against the Institute or its students / faculty / personnel or the Team, Participants, or any other person engaged by the Team in relation to the Program and/or arrangement contemplated under the Terms. 3.	Fullerton India Credit Company and Institute shall jointly develop a dispute redressal mechanism to handle any issues as may emerge from the Program. A dispute resolution committee shall be formed, with one representative each from Fullerton India Credit Company and the Institute, who then shall jointly nominate an independent party to be the third member of this committee. Such committee's decision shall be final and binding and in the event such decision is disputed, Fullerton India Credit Company's decision shall be final and binding. In case of any dispute between Fullerton India Credit Company and any individuals involved in the Program, the decision of Fullerton India Credit Company will be final and binding. All disputes shall be governed by laws of India and subject to exclusive jurisdiction of courts of Mumbai. 4.	Fullerton India Credit Company/ Jury shall not be liable for
                                        </li>
                                        <li>any costs incurred or loss or liability suffered by the Teams /Participants in relation to Program ; 2.	any lost expectation of profits by the Teams / Participant/s; 3.	any failure by Teams / Participant/s to understand the Terms and his/her interpretation of the same; or 4.	any other benefit the Teams/Participants may expect to gain by participating in the Program. 5.	any direct, indirect, incidental, consequential, special or exemplary damages arising with respect to the Program or the suspension/cancellation/termination of the Program, even if Fullerton India Credit Company/its affiliates have been advised of the possibility of such damages, such as, but not limited to, loss of revenue or anticipated profits or lost business. Fullerton India Credit Company/its affiliates shall not have any liability whatsoever in case of any third party claims, demands, suit, actions, or other proceedings against the Teams/Participant/s /Institute in relation to the Program and/or arrangement/obligations contemplated under these Terms.
                                        </li>
                                        <li>The Teams qualifying the Ideate stage and the presentation round thereof, shall be eligible for the prototype development stage. The participation in the Prototype stage shall be at the sole discretion of Fullerton India Credit Company and subject to such eligibility criteria's as may be determined by Fullerton India Credit Company and shall not be open to dispute by any Team/Participant(s). 6.	For Teams/Participants registering through Institutes which have signed an MOU with Fullerton India Credit Company, these Terms shall apply in addition to, and not in derogation of the terms of such MOU.
                                        </li>
                                    </ul>

                                </div>
                                <div class="dt-sc-one-half column">
                                    <img src="images/tab-img-2.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-tabs-vertical-frame-content">
                            <div class="tab-content">
                                <div class="dt-sc-one-half column first">
                                    <h3>Clean &amp; Simple Code! </h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia, per inceptos himenaeos. </p>
                                    <p>Pro ut labore probatus accommodare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. At iudico persecuti has, sea no deleniti ullamcorper. </p>
                                    <div class="dt-sc-clear"></div>
                                    <ol class="type2">
                                        <li><span>Phasellus congue purus per inceptos himenaeos. </span></li>
                                        <li><span>Lorem ipsum dolor consectetur adipiscing elit. </span></li>
                                        <li><span>Praesent sagittis libero blandit vehicula sodales. </span></li>
                                    </ol>
                                </div>
                                <div class="dt-sc-one-half column">
                                    <img class="non-sticky tab-4" src="images/tab-img-3.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
                <section id="team" class="content">
                    <div class="twitter-parallax fullwidth-section dt-sc-parallax-section">
                        <div class="container animate" data-animation="fadeIn" data-delay="100">
                            <h3 class="main-title">FAQs</h3>
                        </div>
                    </div>
                    <div class="column dt-sc-one-half first">
                        <div class="dt-sc-hr-invisible-toosmall"></div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">General</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	Who can participate in the programme?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            •	Any student pursuing any course in any of the partnered institutes can participate.
                                            <br />
                                            •	Participants need to register for the programme through the website
                                            <br />
                                            •	Participants need to be Indian citizens, with a minimum age of 18 years
                                            <br />
                                        </div>

                                        <b>2.	What are the eligibility criteria?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Eligibility criteria vary with each stage of the programme. At each stage, the ideas (as well as the teams)
          will be evaluated on a variety of factors including innovativeness, applicability in business functions,
          feasibility, scalability, and commercialization potential. Fullerton India reserves the right to reject/accept any idea at any stage of the programme as per its sole discretion.
   
                                        </div>
                                        <b>3.	Who can I add as team members?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Teams can constitute of any student pursuing any course in any batch of the partnered institutes. Startups incubated within the innovation cells of the partnered institutes may also apply. However, students need to form teams only with fellow students within their own campus.
   
                                        </div>
                                        <b>4.	What is the role of the Team Coordinator?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            a.	The Team Coordinator is the first person who registers a team on the website.
                                            <br />
                                            b.	He/She can add/delete members from the team by logging into the website<br />
                                            c.	He/She is the primary point of contact between Fullerton India and the team. All official correspondence will flow to the team via the team coordinator<br />
                                            d.	Except for the final cash award, the Team Coordinator's responsibility is to disburse the cash award won at any stage of the programme between individual team members. The final cash award will be disbursed to each team member (and faculty mentor, if present) individually by Fullerton India.<br />

                                        </div>
                                        <b>4.	What is the role of the Team Coordinator?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No
   
                                        </div>
                                        <b>6.	I am from ABC college, studying course “P”, Year “N”. Can I form a team with my friends from ABC college, studying course “Q” and “R”, Year “M” and “O”?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes
   
                                        </div>
                                        <b>7.	How many members constitute a team?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Teams can constitute of members between 1-5. 
   
                                        </div>
                                        <b>8.	I am currently in the final year of my course. Can I participate?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, if your idea gets selected for further stages of the programme, it is up to you to manage your schedule. While Fullerton India will try its best to accommodate exam/course schedules, it bears no responsibility for the individual schedules of participants outside their curriculum. 
   
                                        </div>
                                        <b>9.	How can I add my faculty professor as a mentor for my team?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You may send an email to your faculty mentor, who needs to acknowledge your request. This needs to be forwarded to the official email ID of the programme
                                            <email>
                                            marking your faculty mentor in CC. 
   
                                        </div>
                                        <b>10.	I have a good idea, but I am not sure how it would apply to retail lending. Can I participate?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes! Good ideas will always be welcomed here, and if any applicability is foreseen during the evaluation stage, your team will be assigned an appropriate mentor from within the organization to guide you from a business perspective.
   
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">The Final Arena</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	I don't know how to make a project plan. What do I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You will be provided with a format and guided on project plan preparation by your mentors in Fullerton India.

   
                                        </div>

                                        <b>2.	What are the components of the project plan?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            A project plan mainly consists of the major activities (which are subdivided into smaller activities), timelines for completing each line activity, and milestones indicating phase wise development. It also consists of the resource estimates for development (software/hardware costs, logistics costs, other equipment costs).
   
                                        </div>
                                        <b>3.	What kind of support will be provided by Fullerton India for project development?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India will provide teams with
1.	Mentoring support so that teams have an idea of the product they need to develop
                                            <br />
                                            2.	Financial support in terms of cost of development<br />
                                            3.	Travel/stay costs in case the team is required to visit the office at any point<br />

                                        </div>
                                        <b>4.	What happens if my coursework/exam dates clash with milestones? </b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You can make your project plan based on the estimates you have regarding your coursework commitments and exams. However, in case of any sudden change of schedule, you can make a request to your mentor for revision of timelines which may be accepted/rejected after evaluation.
   
                                        </div>
                                        <b>5.	What is the duration for project development?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            There is no specified duration for project development. Timelines will be decided between the teams and their mentors based on scope, resource constraints, schedules, etc. 
   
                                        </div>
                                        <b>6.	Will I have to work at Fullerton India office for the project development?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You may do most of the work from your own location. However, if it is absolutely necessary for you to work from Fullerton India due to any security/logistical issues, care will be taken to accommodate your coursework and schedule. Also, Fullerton India will bear all costs towards travel (local included), stay and food arrangements.
   
                                        </div>
                                        <b>7.	Can I change my faculty mentor for the project at this stage?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, you will need to provide a letter of acceptance from the older faculty mentor stating that he is OK with you changing your mentor, and is ready to forgo any claims to award money which may/may not be won depending on the team's qualification in the final round. You will also need to provide a letter of acceptance from the new mentor stating that he/she would be your mentor starting “X” date.
   
                                        </div>
                                        <b>8.	Can I change team members for the project at this stage?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, maximum number of team members at any stage of the programme cannot exceed 5.

   
                                        </div>
                                        <b>9.	My project requires software/hardware/other equipment which needs to be purchased. What can I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            If your project requires any resources apart from those specified in the project plan, you may make a formal request for the same. Fullerton India will evaluate your request and may accept/reject it based on feasibility.

   
                                        </div>
                                        <b>10.	What happens to my idea if it doesn't qualify in the final stage?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India still reserves the right to use the product at a later stage in future based on its sole discretion. If you would like to continue pursuing it through other platforms, you may submit a request for an NOC within 60 days of being rejected, post receipt of which the organization will provide you the same within 90 days. 
   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">Entrepreneurship</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	My idea has qualified the Grand Arena stage, and I am interested in starting my own business. What kind of support will I get from Fullerton India?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India will guide interested students by
                                            <br />
                                            a.	Providing them all the required knowledge and/or putting them in touch with parties with the capability of doing so regarding setting up a new business<br />
                                            b.	Provide the students a purchase order based on which the team may pitch to investors<br />
                                            c.	Guide them towards attaining seed funding for their startup<br />

                                        </div>

                                        <b>2.	My idea has qualified the Grand Arena stage, but I am not interested in setting up a business. What happens in this case?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India can use the product within its businesses based on its sole discretion independently or via external parties. 
   
                                        </div>
                                        <b>3.	Will Fullerton India provide me with seed funding for my business?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India will guide teams towards attaining seed funding for their startup, and will also provide the students a purchase order based on which the team may pitch to investors
   
                                        </div>
                                        <b>4.	At this stage, can I sell my idea to other companies? </b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No. However, if circumstances demand the option, you may apply for an NOC to Fullerton India, who will evaluate your request and accept/reject the same based on its sole discretion.
   
                                        </div>
                                        <b>5.	My team members are no longer interested in pursuing entrepreneurship, but I want to continue by adding new team members/partners. Is this possible?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. After the final arena stage, all students/teams interested in pursuing entrepreneurship are free to set up their business on the lines of any model (partnership, proprietorship, etc) based on their own discretion. If the initial team gets disbanded and a new one is formed, it is the team's/Team Coordinator's responsibility to intimate Fullerton India of the same.
   
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="column dt-sc-one-half">
                        <div class="dt-sc-hr-invisible-toosmall"></div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">Intellectual Property Rights</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	Once my idea gets selected at Fullerton India Finnovatica, can I submit it to other similar programmes?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            From the moment an idea is submitted to the programme, Fullerton India has complete rights over it, and may choose to accept/reject it at any stage. Until the idea is a part of the programme, the team cannot submit it anywhere else.  If the idea gets rejected at any stage of the programme, the team may apply for a “No Objection Certificate” from Fullerton India within 60 days of rejection. Fullerton India may then take the team back into the programme, or issue the NOC within 90 days of getting the request, after which the team is free to submit its idea elsewhere. However, Fullerton India will continue to have ownership over the idea, and may choose to use it at a later stage at its sole discretion, bearing no liability to any party.
   
                                        </div>

                                        <b>2.	Do I have complete ownership over my idea?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            From the moment an idea is submitted to the programme, Fullerton India has complete rights over it, and may choose to accept/reject it at any stage. If an idea is patentable, the IPR to the same automatically belongs to Fullerton India. However, the student will be named as the “inventor” in the application for such a patent.
If the idea has already been patented, by submitting the same to the programme, the student waives off all rights, and Fullerton India is free to use the idea without any obligations at any stage in the future based on its sole discretion.

   
                                        </div>
                                        <b>3.	If my idea gets rejected at any stage of the programme, can I re-submit it elsewhere?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            If the idea gets rejected at any stage of the programme, the team may apply for a “No Objection Certificate” from Fullerton India within 60 days of rejection. Fullerton India may then take the team back into the programme, or issue the NOC within 90 days of getting the request, after which the team is free to submit its idea elsewhere. However, Fullerton India will continue to have ownership over the idea, and may choose to use it at a later stage at its sole discretion, bearing no liability to any party.
   
                                        </div>
                                        <b>4.	If my project makes it past the final stage, and I am not interested in pursuing it further, what happens next?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            If a team is not interested in pursuing entrepreneurship, they may do so with no obligation in any tangible or intangible form towards Fullerton India. Likewise, Fullerton India reserves the right to hire any external party for further development of the product in future based on its sole discretion with no obligation in any tangible or intangible form towards the team.

   
                                        </div>
                                        <b>5.	I have an interesting product, and I have already patented it. Can I apply?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, Fullerton India reserves the right to use/commercialize the idea as per its sole discretion with no obligation in any tangible or intangible form towards the team owning the patent. Any product developed as a build-over or customization of an existing product will be the sole property of Fullerton India, and the team will not have any commercial rights over the same unless authorized by Fullerton India.
   
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">Genesis</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	What is the format in which the idea needs to be submitted?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            The format may be downloaded from the “Upload” section on the left hand menu after you login. You may also download the same from here
                                            <link>
                                            . 
File specifications: .doc or .docx or .pdf files ONLY, with a maximum size of 200KB

   
                                        </div>

                                        <b>2.	I have more than 1 idea. Can I submit them all?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Each team can submit up to a maximum of 2 ideas

   
                                        </div>
                                        <b>3.	How many teams can I be a part of?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            A student/participant can be a part of a maximum of 2 teams
   
                                        </div>
                                        <b>4.	I don't want to be the team coordinator anymore. What do I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You may login to the website, and on the Student Dashboard, click on “Change Team Coordinator”. You will be required to select an existing team member as a Team Coordinator before your request can be completed.

   
                                        </div>
                                        <b>5.	I don't want to be a part of the team anymore. What do I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You can login to the website, and select “Withdraw” option near your name. Alternately, you may ask your team coordinator to select “Delete team member” option near your name on his/her dashboard, post which you will be sent an email containing links for accepting/rejecting the deletion. If you are the team coordinator, you will need to select an existing member as a team coordinator before you can withdraw from the programme.
   
                                        </div>
                                        <b>6.	I have an idea, but I am not sure if I will be able to develop the project if it gets selected. Can I participate?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, do keep in mind that if your idea gets selected, you will need to develop the project with the help of your team. A good way would be to add team members /faculty mentors who can help you develop the project. 
If your team cannot develop the project, you will be disqualified from the programme. Fullerton India will then select an alternate team to work on the project further.

   
                                        </div>
                                        <b>7.	I have an idea, but it has already been implemented by other banks/financial institutions. Can I submit?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No, especially if the product has already been patented/ copyrighted. However, an idea based on an existing product with further enhancements/capabilities/applications, and developed from scratch may be accepted.

   
                                        </div>
                                        <b>8.	I have an idea, and I would like to speak to someone from Fullerton India to understand how it could fit into business needs. What can I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You may send an email to the registered email ID
                                            <id>
                                            or through the “Contact Us” section of the website. Fullerton India will evaluate your request, and assist you further based on feasibility of request.

   
                                        </div>
                                        <b>9.	Do I have to add team members in the Genesis stage itself?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You can add team members at any stage of the programme.

   
                                        </div>
                                        <b>10.	Can I change team members at a later stage of the programme?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes. However, the maximum number of team members at any point cannot exceed 5.

   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="dt-sc-toggle-frame">
                            <a href="#" class="dt-sc-toggle">Appathon</a>
                            <div class="dt-sc-toggle-content">
                                <div class="block">
                                    <div>
                                        <b>1.	My idea has been selected, but I am not sure if my parents/guardians will allow me to come to Mumbai for the Appathon. What do I do?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India bears no responsibility towards individual participants. All participants have to secure permission for travelling from their guardians/parents/institutes and provide confirmation.

   
                                        </div>

                                        <b>2.	What is the format of the presentation for Day 3?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            You can download the format from the website by logging in, and navigating to the “Upload Documents” page. Alternately, you may use this link to download.
File Specs: .ppt, .pptx or .pdf files only. Maximum File Size = 2 MB

   
                                        </div>
                                        <b>3.	Can I send my presentation via e-mail?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No. In case of any specific request, Fullerton India may entertain email entries on a case-by-case basis based on its sole discretion.
   
                                        </div>
                                        <b>4.	Can I add graphics/custom animation/videos to my presentation?  </b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Yes, as long as the overall file size doesn't exceed 2 MB, and the presentation is in the provided format.

   
                                        </div>
                                        <b>5.	Do I have to arrange my own travel and stay?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No. Fullerton India will be responsible for arranging the travel (including local travel), stay and food arrangements of all participants.
   
                                        </div>
                                        <b>6.	What is the last date for submission of presentation?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            All important dates will be communicated to the participants with sufficient notice via email as well as the website.

   
                                        </div>
                                        <b>7.	Does everyone in the team need to present?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No. The team may select presenter(s) among themselves.

   
                                        </div>
                                        <b>8.	I may not be able to come to Mumbai for the presentation. Can I do so over video conference?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            No. You may instead, ask your team members to represent you. In case of dire consequences, Fullerton India may make exceptions on a case by case basis based on its sole discretion

   
                                        </div>
                                        <b>9.	How will the cash award for qualifying this stage be distributed among team members?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            Fullerton India will provide a cheque in favor of the account specified by the Team Coordinator. Distribution of the amount is up to the team coordinator and the members. Please note that the amount will be provided after deduction of taxes as applicable.

   
                                        </div>
                                        <b>10.	If my team qualifies, by when can we expect the cash award?</b>
                                        <br />
                                        <div style="padding-left: 25px">
                                            The cheques will be couriered to your Institute Coordinator, and you will also be intimated via email along with the details.

   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="blog" class="content">
                    <div class="dt-sc-hr-invisible-medium"></div>
                    <div class="container">
                        <h2 class="main-title">Our Blog  </h2>
                        <div class="dt-sc-hr-invisible-toosmall"></div>
                        <div class="dt-sc-one-half column first">
                            <article class="blog-entry animate" data-animation="fadeInLeft" data-delay="100">
                                <div class="entry-thumb">
                                    <a href="#">
                                        <img title="" alt="" src="images/blog-images/blog-1.jpg">
                                        <div class="entry-title">
                                            <h5>4 Things to Remember as an Innovator
                                            </h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="entry-details">
                                    <div class="entry-meta">
                                    </div>
                                    <div class="tags">
                                    </div>
                                </div>
                                <div class="entry-content">
                                    <p>
                                        The walk from campus to the world outside is essentially out of syllabus! The opportunities are immense and it takes immense curiosity to unravel them. Text books are written on discoveries, and not the other way around.
                                    </p>
                                    <p>
                                        As you step into the exciting process of discovery, here are a few things you should keep in mind. 
                                    </p>
                                </div>

                                <div class="dt-sc-toggle-frame">
                                    <a href="#" class="dt-sc-toggle">Read more  </a>
                                    <div class="dt-sc-toggle-content">
                                        <div class="block">
                                            <p>
                                                <b>Collaborate and Co-create:</b> Often the big idea is only the beginning. You may have one. But it requires a myriad of skills
                                          and capabilities to bring it to fruition. There is an old saying that it takes an entire village to raise a child.
                                          Your idea may be your baby, but it needs support from various quarters to give effect to it. Never try to do it alone,
                                          else it will only remain an idea and someone else will sooner or later have the same idea and move faster than you by 
                                         collaborating better. However – do remember to strike a balance. While team work rules, too many cooks do tend to spoil the broth! 
                                            </p>
                                            <p>
                                                <b>Believe and make others believe:</b> Ideas may seem far-fetched at the beginning. It takes a lot of belief to turn it into reality.
                                         There is a saying that people do a lot for money, more for a leader and the most for a belief. Your idea should be strongly 
                                        embedded to your belief and soon shared and co-opted by your team.  Make your idea infectious! Ensure that your team has the 
                                        same passion as you do. After all, the key to success for any idea is the burning passion of its creators; and the determination 
                                        of the team behind the idea to cross over hurdles and accomplish a shared dream.

                                            </p>
                                            <p>
                                                <b>Simplicity is elegance:</b>  The most commercially successful ideas depend on how simple is it for people at large to understand 
                                        and use your product and services. You may have a complex algorithm at the back of your idea, but the customer needs to only 
                                        know a simple action like turning the light switch on or off. 

                                            </p>
                                            <p>
                                                <b>Finally…… have fun!:</b> The idea of drawing you out of syllabus is to make it an enjoyable journey of learning. At the end of a 
                                        satisfying and successful project, you will sit back and laugh at the gaffes or serendipity and value the camaraderie that you 
                                        developed along the way. 
                                            </p>
                                            <p>
                                                We welcome you to Finnovatica, which we hope will be an exciting and fun filled journey – and out of syllabus!
                                            </p>
                                            <p>
                                                Best Regards,
                                                <br />
                                                Swaminathan Subramanian
                                                <br />
                                                <img src="images/Subramanian.png" width="150px" height="150px" />
                                            </p>
                                            <p>
                                                Mr. Swaminathan Subramanian is the Head, Human Resources for Fullerton India, based in Mumbai.

                                            </p>
                                            <p>
                                                In his career spanning 18 years, he has worked largely in MNC Banks including Standard Chartered Bank, Barclays Plc and JP Morgan Chase across South Asia, Middle East and Africa markets.

                                            </p>
                                            <p>
                                                He is a business school alumnus of XRLI, Jamshedpur and an engineer from Jadavpur University, Kolkata


                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="dt-sc-one-half column">
                            <article class="blog-entry animate" data-animation="fadeInRight" data-delay="100">
                                <div class="entry-thumb">
                                    <a href="#">
                                        <img title="" alt="" src="images/blog-images/blog-2.jpg">
                                        <div class="entry-title">
                                            <h5>Start-ups in Fintech space
                                            </h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="entry-details">
                                    <div class="entry-meta">
                                    </div>
                                    <div class="tags">
                                    </div>
                                </div>
                                <div class="entry-content">
                                    <p>By Ravindra Rao </p>
                                    <p>
                                        The quick rise of FinTech start-ups is posing a risk to the traditional banking infrastructure. These start-ups are selling
                                         the proposition of being more efficient, transparent, inexpensive and customer-focused. 
                                    </p>
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                </div>
                                <div class="dt-sc-toggle-frame">
                                    <a href="#" class="dt-sc-toggle">Read more  </a>
                                    <div class="dt-sc-toggle-content">
                                        <div class="block">
                                            <p>
                                                So much is the transformational wave that two generations below us are quite confident of the traditional banks becoming extinct, despite the FinTech companies being mono-line and focussing on specific “slices”. 

                                            </p>
                                            <p>
                                                These start-ups are leveraging on new technology and specifically exploring the digital and mobile channels. This makes them competitive in terms of pricing and they are generating a fair amount of interest with consumers and investors.  According to market sources, FinTech investments made during 2011-2015 went up to USD 7.4 billion. 


                                            </p>
                                            <p>
                                                Digitization is revolutionising the way consumers interact with everything – companies such as Amazon, Apple, Airbnb, Netflix and Uber have led the disruption and transformed customer expectations. 


                                            </p>
                                            <p>
                                                The financial services space has also responded ubiquitously to the emergence of the FinTech companies. Conceptually, the FinTech companies have successfully explored the inherent weakness of the system of 
                                                <br />
                                                (a) Being resistant to change or slow response to customer needs
                                                <br />
                                                (b) Investing in new technologies and focusing on scale.

                                            </p>
                                            <p>
                                                FinTech companies, given this tailwind, are able to market products quickly and are rapidly changing to market trends. Banks and financial institutions need to partner with FinTech providers to come up with innovative solutions and leverage the strategic advantages of combining the flexibility and technological prowess of FinTech companies with their own multi-product capabilities and customer reach. Also, any innovative products require an in-depth analysis from the view of compliance and regulations. FinTech start-ups having partnerships with banks and financial institutions are at an advantage to overcome such hurdles, thus strengthening the ecosystem for the benefit of end customers.

                                            </p>
                                            <p>
                                                There are some challenges that one needs to be wary about. FinTech start-ups tend to spend a lot of resources in marketing efforts and convincing prospective customers about the product. Instead, identifying pain areas and developing customised solutions for specific consumer groups would be a more logical solution. The research may be time-consuming, but is crucial for successful adoption. Many FinTech start-ups are self-funded. Angel or early stage investors are scarce in the financial services industry and hence there is a need for industry experts to promote and encourage them. 

                                            </p>
                                            <p>
                                                As per the TRAI report, the number of internet users in India is estimated to be 500 million. Mobile internet contributes to 94% of the internet usage in India. Thus, there is tremendous scope in this area which should be explored by FinTech companies, especially since the market is only expected to expand. 
                                            </p>
                                            <p>
                                                In India, it's mostly a waiting game as of now, especially since the FinTech space has just emerged, and is relatively new. Many experts have dismissed the rise of FinTech companies as the latest version of “fly by night” operations. But, while some of the players fit this description, the risk management foundations of many of these new players appear sound. And while impending regulation, interest rate increases and downstream liquidity implications may pose the greatest risks to the FinTech industry, we expect many lending FinTech companies to survive through the credit cycle. 

                                            </p>
                                            <p>
                                                The author is the Chief Executive Officer of Fullerton India Home Finance Company Limited. He comes with two decades of experience in the fields of risk management, business, operations, technology and compliance within the banking and financial services industry.


                                            </p>
                                        </div>
                                    </div>
                            </article>
                        </div>

                    </div>
                    <div class="dt-sc-hr-invisible-medium"></div>
                </section>
                <section id="contact" class="content">
                    <footer>

                        <div id="dt-contact-content">
                            <div class="container">
                                <div class="dt-sc-one-third column first">
                                    <div class="dt-sc-contact-info">
                                        <h5 class="sub-title alignleft">Where to Meet ? </h5>
                                        <i class="fa fa-phone"></i>
                                        <p>
                                            Floor 6, B Wing, Supreme Business Park, Powai, 
                                            <br>
                                            Mumbai 400076
                                        </p>
                                    </div>
                                    <div class="dt-sc-contact-info">
                                        <h5 class="sub-title alignleft">Call Us </h5>
                                        <i class="fa fa-map-marker"></i>
                                        <p>(00) 123 456 7890 </p>
                                    </div>
                                    <div class="dt-sc-contact-info">
                                        <h5 class="sub-title alignleft">Mail Us </h5>
                                        <i class="fa fa-envelope"></i>
                                        <a href="">finnovatica@fullertonindia.com</a>
                                    </div>
                                </div>
                                <div class="dt-sc-two-third column">
                                    <div class="dt-sc-contact-form">
                                        <div id="ajax_contact_msg"></div>
                                        <form method="post" action="php/send.php" class="dt-sc-enquiry-form" name="enqform">
                                            <input type="text" required="" name="txtname" title="Please enter your name" placeholder="YOUR NAME">
                                            <input type="email" required="" autocomplete="off" name="txtemail" title="Please enter your valid email_id" placeholder="YOUR EMAIL">
                                            <textarea required="" rows="3" cols="5" name="txtmessage" title=" Please enter your message" placeholder="YOUR SUGGESTIONS HERE"></textarea>
                                            <input type="submit" value="Send it Now" name="submit" class="submit">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                </section>

                <div class="dt-sc-copyrights">
                    <div class="container">
                        <p>© 2016  <a href="#">Finnovatica </a></p>
                        <div class="dt-sc-social-icons">
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="dribbble"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <form id="from1" runat="server">
        <div id="Login" class="overlay">
            <div class="popup">
                <a class="close" href="#">X</a>
                <div class="content">
                    <div class="login-box">
                        <div class="lb-header">
                            <a href="#" class="active" id="login-box-link">Login Here</a>
                        </div>
                        <asp:Label ID="lblLoginMsg" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                        <asp:Panel ID="pnlLogin" runat="server">
                            <div class="email-login">
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtuserid" runat="server" placeholder="User Id" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password" />
                                </div>
                                <div class="u-form-group">
                                    <asp:DropDownList ID="ddlLoginType" runat="server" CssClass="selectdrop">
                                    </asp:DropDownList>
                                </div>
                                <div class="u-form-group">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit"  OnClick="btnlogin_Click" />

                                    <asp:Button ID="btnnidden"  runat="server" Text="Submit" style="visibility: hidden; display: none;" OnClick="btnlogin_Click"  />
                                </div>
                                <div class="u-form-group">
                                    <a href="#ForGetPassword" class="forgot-password">Forgot password?</a>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        <div id="SignUp" class="overlay">
            <div class="popup">
                <a class="close" href="#">X</a>
                <div class="content">
                    <div class="login-box">
                        <div class="lb-header">
                            <a href="#" class="active" id="A1">Register Here</a>
                        </div>
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                        <asp:Panel ID="pnlReg" runat="server">
                            <div class="email-login">
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtfname" runat="server" placeholder="First Name" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtEmailID" runat="server" placeholder="Email ID" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtSignupUserId" runat="server" placeholder="User ID" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtSignupPwd" runat="server" placeholder="Password" />
                                </div>
                                <div class="u-form-group">
                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" />
                                </div>

                                <div class="u-form-group">
                                    <asp:TextBox ID="txtdob" runat="server" placeholder="Date Of Birth" />
                                </div>
                                <div class="u-form-group">
                                    <asp:DropDownList ID="ddlinstitute" runat="server" placeholder="Institute" CssClass="selectdrop">
                                    </asp:DropDownList>

                                </div>

                                <div class="u-form-group">
                                    <asp:Button ID="btnRegister" runat="server" Text="SING UP" OnClientClick="return Validateall(this);" OnClick="btnRegister_Click" />
                                </div>

                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        <div id="ForGetPassword" class="overlay">
            <div class="popup">
                <a class="close" href="#">X</a>
                <div class="content">
                    <div class="login-box">
                        <div class="lb-header">
                            <a href="#" class="active" id="A2">Forget Password</a>
                        </div>
                        <asp:Label ID="lblForgetMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                        <div class="email-login">
                            <div class="u-form-group">
                                <asp:TextBox ID="txtFPEmail" runat="server" placeholder="User Id" />
                            </div>
                            <div class="u-form-group">
                                <asp:Button ID="btnForgot" runat="server" Text="Submit" OnClientClick="return ForgotValidate(this);" OnClick="btnForgot_Click" />
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>

    <%--<script src="DashBoard/Jscripts/jquery-1.12.4.js"></script>
    <script src="DashBoard/Jscripts/jquery-ui-1.12.1.js"></script>
    <script src="DashBoard/Jscripts/bootstrap.min-3.3.7.js"></script>--%>



    <script type="text/javascript">
       
        function ForgotValidate(btnsubmit) {
            debugger;
            var UserEmail = document.getElementById("<%=txtFPEmail.ClientID%>");
            if (UserEmail.value == "") {
                alert("Please enter Email.");
                UserEmail.focus();
                return false;
            }
        }

        jQuery(document).ready(function () {
          
            jQuery("#btnsubmit").click(function () {
                
                                var UserEmail = document.getElementById("<%=txtuserid.ClientID%>");
                var UserPassword = document.getElementById("<%=txtpassword.ClientID%>");
                var ddlLoginType = document.getElementById("<%=ddlLoginType.ClientID%>");
                if (UserEmail.value == "") {
                    alert("Please enter UserId.");
                    UserEmail.focus();
                    return false;
                }
                if (UserPassword.value == "") {
                    alert("Please enter Password.");
                    UserPassword.focus();
                    return false;
                }

                if (ddlLoginType.value == "0") {
                    alert("Please select LoginType.");
                    ddlLoginType.focus();
                    return false;
                }

                jQuery.ajax({
                    type: "POST",
                    url: "/FullertonService.asmx/IsValidUser",
                    contentType: "application/json; charset=utf-8",
                    type: 'POST',
                    dataType: 'JSON',
                    async: false,
                    data: JSON.stringify({ email: UserEmail.value, password: UserPassword.value, role: ddlLoginType.value }),
                    success: function (data) {
                        debugger;

                        if (data.d == false) {
                            alert("UserID/Password incorrect.");
                            return false;
                        }
                        else
                        {
                            jQuery("#<%=btnnidden.ClientID%>").trigger("click");
                            return true;

                        }

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        debugger;
                        return false;
                    }
                });
                return false;
            });
        });
    </script>
    <script type="text/javascript">
        //$('#main-menu').onePageNav({
        //    currentClass: 'current_page_item',
        //    filter: ':not(.external)',
        //    scrollSpeed: 750,
        //    scrollOffset: 73
        //});
    </script>


</body>
</html>

