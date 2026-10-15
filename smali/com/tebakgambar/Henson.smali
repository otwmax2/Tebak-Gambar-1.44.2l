###### Class com.tebakgambar.Henson (com.tebakgambar.Henson)
.class public Lcom/tebakgambar/Henson;
.super Ljava/lang/Object;
.source "Henson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/Henson$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/Henson$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/Henson$b;-><init>(Landroid/content/Context;Lcom/tebakgambar/Henson$a;)V

    return-object v0
.end method

###### Class com.tebakgambar.Henson.a (com.tebakgambar.Henson$a)
.class synthetic Lcom/tebakgambar/Henson$a;
.super Ljava/lang/Object;
.source "Henson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/Henson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.tebakgambar.Henson.b (com.tebakgambar.Henson$b)
.class public Lcom/tebakgambar/Henson$b;
.super Ljava/lang/Object;
.source "Henson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/Henson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tebakgambar/Henson$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/Henson$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c()Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public f()Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/component/OfflineAdActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public h()Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public j()Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public k()Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/levelselection/SliderActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public l()Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public n()Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;

    iget-object v1, p0, Lcom/tebakgambar/Henson$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
