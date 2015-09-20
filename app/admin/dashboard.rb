ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    columns do
      column do
        panel '<i class="fi-torsos-all"></i> Recent Users'.html_safe, style: 'min-height: 340px;' do
          table_for User.order('id desc').limit(10).each do |user|
            column(:name) { |resource| link_to(user.name, admin_user_path(resource)) }
          end
          text_node '<a href="/admin/users">more users...</a>'.html_safe
        end
      end

      column do
        panel '<i class="fi-torsos-all"></i> Current Best Seller'.html_safe, style: 'min-height: 340px;' do
          div do
            text_node %(
              <a href='https://bookshout.com/ebooks/the-scorch-trials-maze-runner-book-two'>
                <img src='https://d2ql0oya2738vd.cloudfront.net/products/9780375896118/covers/9780375896118-bookshelf.jpg?1432999479' style='width: 25%; height: auto;' />
              </a>
              <p>
                <strong>The Scorch Trials (Maze Runner, Book Two) (eBook)</strong>
                <br>
                by <a href="https://bookshout.com/authors/james-dashner">James Dashner</a> (Author)
                <br>
                Category: Children & Teens
                <br>
                Released: October 12, 2010
              </p>
              <a href='https://bookshout.com/ebooks?book_type=nyt_bestsellers'>more best sellers...</a>
            ).html_safe
          end
        end
      end
    end

    columns do
      column do
        panel '<i class="fi-battery-full"></i> System Performance'.html_safe do
          div do
            text_node %(<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB" width="100%" height="300" scrolling="no" frameborder="no"></iframe>).html_safe
          end
        end
      end
    end
  end
end
