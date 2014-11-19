HB.Router.reopen({
  location: 'history'
});

HB.Router.map(function() {
  this.resource('anime', {path: '/anime/:id'}, function() {
    this.resource('episodes', {path: '/episodes'}, function () {
       this.route('show', {path: '/:episode_id'});
    });
    this.resource('reviews', {path: '/reviews'}, function() {
      this.route('show', {path: '/:review_id'});
    });
    this.route('quotes');
  });

  this.resource('manga', {path: '/manga/:id'}, function() {
    this.route('reviews');
  });

  this.resource('character', {path: '/character/:id'});

  this.resource('story.show', {path: '/stories/:id'});

  this.route('filterAnime', {path: '/anime/filter'});
  this.route('filterManga', {path: '/manga/filter'});

  this.resource('user', {path: '/users/:id'}, function() {
    this.route('library');
    this.route('manga_library', {path: 'library/manga/'});
    this.route('reviews');
    this.route('following');
    this.route('followers');
  });

  this.route('onboarding', function() {
    this.route('start');
    this.route('rating-system');
    this.route('categories');
    this.route('library');
    this.route('finish');
  });

  this.route('sign-in');
  this.route('sign-up');
  this.route('settings');
  this.route('dashboard');
  this.route('notifications');

  this.resource('apps', function () {
    this.route('new');
    this.route('mine');
  });
  this.route('search');

  this.route('edits');

  this.route('branding');
  this.route('privacy');
  this.route('kotodama');
});
