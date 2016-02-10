##Beginning an Xcode Project from Scratch
####Getting Started
- Open Xcode and select "Create a new Xcode Project"
  - Xcode presents you with many types of boilerplate code (code that is written for us so that we start with a partially written app). Select "Single View Application" under "iOS application".
- Call your product "TriviaApps", the language should be Swift, and the Devices should be iPhone.
- There are two main tasks we need to complete to have a functioning app: we need to create a layout of elements that will be viewed on the screen, and also to create a backend that will handle interaction with our view elements.

####Setting up the View
- Click on the Main.storyboard file. This will display a large box where we can start adding items to build our view. Right now, it is large because it's trying to help us adapt to different screen sizes. We're going to focus on just the iPhone screen for now.
  - At the top of the utility area (the panel on the right), there are six icons. The one on the far left is called the file inspector.
  - Unselect the box 'Use Size Classes'. A dialogue box will appear asking you if you are sure. Select 'Keep size class data for iPhone' and click 'Disable size classes'.

####Adding a Title
- At the bottom of the utilities bar is a library where we can access pre-built tools to add to our app. Selecting the third icon at the top of this box will show you the Object Library (the icon for this is a circle with a square inside).
- There is a search tool at the bottom. Search for the Label object and drag it on to the page.
- We want to position this in the center of the page and against the top margin. Xcode has a feature for aligning elements of the view, so blue lines appear when you are aligned with a margin, at the horizontal or vertical center of the view, or when you line up with the edge of another object. Give it a try. Move your label to the top center.
 
