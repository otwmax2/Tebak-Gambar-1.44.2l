###### Class com.tebakgambar.AdsActivity (com.tebakgambar.AdsActivity)
.class public Lcom/tebakgambar/AdsActivity;
.super Landroidx/fragment/app/e;
.source "AdsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field o:Landroid/widget/ImageView;

.field p:Lcom/tebakgambar/component/CustomButton;

.field q:I

.field r:Ljava/lang/String;

.field s:Lcom/tebakgambar/model/ResultEvents;

.field t:Lcom/tebakgambar/model/ResultEventClue;

.field u:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/AdsActivity;->u:Z

    return-void
.end method

.method static synthetic C(Lcom/tebakgambar/AdsActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->F()V

    return-void
.end method

.method private D()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private E()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/AdsActivity$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/AdsActivity$b;-><init>(Lcom/tebakgambar/AdsActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private F()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/AdsActivity;->u:Z

    if-eqz v0, :cond_3d

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/AdsActivity;->t:Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v0, :cond_1f

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/AdsActivity;->t:Lcom/tebakgambar/model/ResultEventClue;

    const-string v2, "event_clue"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 6
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/AdsActivity;->s:Lcom/tebakgambar/model/ResultEvents;

    const-string v2, "event_data"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "isMainLagi"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    .line 10
    :cond_3d
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->D()V

    .line 11
    :goto_40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private G()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/AdsActivity$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/AdsActivity$a;-><init>(Lcom/tebakgambar/AdsActivity;)V

    invoke-virtual {v0, v1}, Lj8/b;->t(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/AdsActivity;->p:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->D()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_24

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/tebakgambar/AdsActivity;->o:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_24

    .line 5
    iget p1, p0, Lcom/tebakgambar/AdsActivity;->q:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "http://j.mp/1F98Noe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_24
    :goto_24
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0a0087

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/component/CustomButton;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->p:Lcom/tebakgambar/component/CustomButton;

    const p1, 0x7f0a0147

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->o:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tebakgambar/AdsActivity;->q:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "event_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEvents;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->s:Lcom/tebakgambar/model/ResultEvents;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "event_clue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEventClue;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->t:Lcom/tebakgambar/model/ResultEventClue;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isMainLagi"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tebakgambar/AdsActivity;->u:Z

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/AdsActivity;->t:Lcom/tebakgambar/model/ResultEventClue;

    if-eqz p1, :cond_61

    .line 10
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->r:Ljava/lang/String;

    goto :goto_69

    .line 11
    :cond_61
    iget-object p1, p0, Lcom/tebakgambar/AdsActivity;->s:Lcom/tebakgambar/model/ResultEvents;

    if-eqz p1, :cond_69

    .line 12
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/AdsActivity;->r:Ljava/lang/String;

    .line 13
    :cond_69
    :goto_69
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->G()V

    .line 14
    invoke-static {p0}, Ly8/y;->W(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1}, Lj8/b;->m()Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_85

    .line 15
    :cond_7d
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj8/b;->z(Landroid/app/Activity;)V

    goto :goto_88

    .line 16
    :cond_85
    :goto_85
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->F()V

    .line 17
    :goto_88
    invoke-direct {p0}, Lcom/tebakgambar/AdsActivity;->E()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onDestroy()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->i()V

    return-void
.end method

###### Class com.tebakgambar.AdsActivity.a (com.tebakgambar.AdsActivity$a)
.class Lcom/tebakgambar/AdsActivity$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/AdsActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/AdsActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/AdsActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/AdsActivity$a;->a:Lcom/tebakgambar/AdsActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/AdsActivity$a;->a:Lcom/tebakgambar/AdsActivity;

    invoke-static {v0}, Lcom/tebakgambar/AdsActivity;->C(Lcom/tebakgambar/AdsActivity;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->g()V

    return-void
.end method

###### Class com.tebakgambar.AdsActivity.b (com.tebakgambar.AdsActivity$b)
.class Lcom/tebakgambar/AdsActivity$b;
.super Landroidx/activity/g;
.source "AdsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/AdsActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/AdsActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/AdsActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/AdsActivity$b;->d:Lcom/tebakgambar/AdsActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/AdsActivity$b;->d:Lcom/tebakgambar/AdsActivity;

    invoke-static {v0}, Lcom/tebakgambar/AdsActivity;->C(Lcom/tebakgambar/AdsActivity;)V

    return-void
.end method
