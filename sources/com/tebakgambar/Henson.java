package com.tebakgambar;

import android.content.Context;
import com.tebakgambar.component.OfflineAdActivity$$IntentBuilder;
import com.tebakgambar.home.HomeActivity$$IntentBuilder;
import com.tebakgambar.howtoplay.HowToPlayActivity$$IntentBuilder;
import com.tebakgambar.levelselection.LevelLoadingActivity$$IntentBuilder;
import com.tebakgambar.levelselection.LevelSelectionActivity$$IntentBuilder;
import com.tebakgambar.levelselection.QuestionSelectionActivity$$IntentBuilder;
import com.tebakgambar.levelselection.SliderActivity$$IntentBuilder;
import com.tebakgambar.question.RegularQuestionActivity$$IntentBuilder;
import com.tebakgambar.selfie.SelfieFrameChooserActivity$$IntentBuilder;
import com.tebakgambar.sendquestion.SendQuestionActivity$$IntentBuilder;
import com.tebakgambar.sticker.StickerCampaignActivity$$IntentBuilder;
import com.tebakgambar.sticker.StickerCampaignListActivity$$IntentBuilder;
import com.tebakgambar.story.StoryActivity$$IntentBuilder;
import com.tebakgambar.tutorial.ClueEventTutorialActivity$$IntentBuilder;

/* JADX INFO: loaded from: classes2.dex */
public class Henson {

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f26752a;

        public ClueEventTutorialActivity$$IntentBuilder a() {
            return new ClueEventTutorialActivity$$IntentBuilder(this.f26752a);
        }

        public HomeActivity$$IntentBuilder b() {
            return new HomeActivity$$IntentBuilder(this.f26752a);
        }

        public HowToPlayActivity$$IntentBuilder c() {
            return new HowToPlayActivity$$IntentBuilder(this.f26752a);
        }

        public LevelLoadingActivity$$IntentBuilder d() {
            return new LevelLoadingActivity$$IntentBuilder(this.f26752a);
        }

        public LevelSelectionActivity$$IntentBuilder e() {
            return new LevelSelectionActivity$$IntentBuilder(this.f26752a);
        }

        public OfflineAdActivity$$IntentBuilder f() {
            return new OfflineAdActivity$$IntentBuilder(this.f26752a);
        }

        public QuestionSelectionActivity$$IntentBuilder g() {
            return new QuestionSelectionActivity$$IntentBuilder(this.f26752a);
        }

        public RegularQuestionActivity$$IntentBuilder h() {
            return new RegularQuestionActivity$$IntentBuilder(this.f26752a);
        }

        public SelfieFrameChooserActivity$$IntentBuilder i() {
            return new SelfieFrameChooserActivity$$IntentBuilder(this.f26752a);
        }

        public SendQuestionActivity$$IntentBuilder j() {
            return new SendQuestionActivity$$IntentBuilder(this.f26752a);
        }

        public SliderActivity$$IntentBuilder k() {
            return new SliderActivity$$IntentBuilder(this.f26752a);
        }

        public StickerCampaignActivity$$IntentBuilder l() {
            return new StickerCampaignActivity$$IntentBuilder(this.f26752a);
        }

        public StickerCampaignListActivity$$IntentBuilder m() {
            return new StickerCampaignListActivity$$IntentBuilder(this.f26752a);
        }

        public StoryActivity$$IntentBuilder n() {
            return new StoryActivity$$IntentBuilder(this.f26752a);
        }

        private b(Context context) {
            this.f26752a = context;
        }
    }

    private Henson() {
    }

    public static b with(Context context) {
        return new b(context);
    }
}
