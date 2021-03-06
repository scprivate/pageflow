import storylinesModule from 'storylines';
import {storylineAttribute} from 'storylines/selectors';

import createStore from 'createStore';
import {expect} from 'support/chai';

describe('storylines', () => {
  it('exports Redux module for storylines collection', () => {
    const storylines = [
      {
        id: 100,
        configuration: {
          parent_page_id: 1
        }
      }
    ];
    const store = createStore([storylinesModule], {storylines});

    expect(storylineAttribute('parentPageId', {id: 100})(store.getState())).to.eq(1);
  });
});
