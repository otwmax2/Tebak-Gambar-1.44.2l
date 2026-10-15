###### Class com.tebakgambar.tutorial.ClueEventTutorialActivity (com.tebakgambar.tutorial.ClueEventTutorialActivity)
.class public Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;
.super Lj8/t;
.source "ClueEventTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;
    }
.end annotation


# instance fields
.field clueEvent:Lcom/tebakgambar/model/ResultEventClue;

.field y:Lo8/a;

.field z:Lcom/tebakgambar/tutorial/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->W0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->X0(Z)V

    return-void
.end method

.method private synthetic W0(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    iget-object v0, v0, Lcom/tebakgambar/tutorial/d;->s:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private X0(Z)V
    .registers 5

    if-eqz p1, :cond_16

    .line 1
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    iget-object v0, v0, Lcom/tebakgambar/tutorial/d;->s:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lcom/tebakgambar/tutorial/a;

    invoke-direct {v2, p0}, Lcom/tebakgambar/tutorial/a;-><init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lj8/k0;->U(Ljava/lang/String;Lt2/f;Landroid/view/View$OnClickListener;)V

    goto :goto_1d

    .line 2
    :cond_16
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    invoke-virtual {p1}, Lj8/k0;->R()V

    :goto_1d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/tutorial/d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/tutorial/d;

    iput-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    const p1, 0x7f0d001d

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/a;

    iput-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->y:Lo8/a;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    invoke-virtual {p1, v0}, Lo8/a;->w0(Lcom/tebakgambar/tutorial/d;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->y:Lo8/a;

    new-instance v0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;-><init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V

    invoke-virtual {p1, v0}, Lo8/a;->u0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;)V

    .line 6
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    invoke-virtual {p1, v0}, Lcom/tebakgambar/tutorial/d;->k(Lcom/tebakgambar/model/ResultEventClue;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->z:Lcom/tebakgambar/tutorial/d;

    iget-object p1, p1, Lcom/tebakgambar/tutorial/d;->t:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/tutorial/b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/tutorial/b;-><init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 9
    new-instance p1, Lcom/tebakgambar/tutorial/c;

    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/ResultEventClue;->tutorial:Ljava/util/ArrayList;

    const v1, 0x7f0d00a6

    invoke-direct {p1, p0, v1, v0}, Lcom/tebakgambar/tutorial/c;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->y:Lo8/a;

    iget-object v0, v0, Lo8/a;->Q:Lcom/tebakgambar/component/CustomListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->y:Lo8/a;

    iget-object p1, p1, Lo8/a;->Q:Lcom/tebakgambar/component/CustomListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomListView;->setExpanded(Z)V

    const p1, 0x7f0a0120

    .line 12
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

###### Class com.tebakgambar.tutorial.ClueEventTutorialActivity.a (com.tebakgambar.tutorial.ClueEventTutorialActivity$a)
.class public Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;
.super Ljava/lang/Object;
.source "ClueEventTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    iget-object v0, p1, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Ly8/y;->f0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/question/RegularQuestionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    iget-object v1, v1, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v1, v1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    const-string v2, "id_event"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isClue"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    iget-object v1, v1, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->clueEvent:Lcom/tebakgambar/model/ResultEventClue;

    const-string v2, "event_clue"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity$a;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class com.tebakgambar.tutorial.a (com.tebakgambar.tutorial.a)
.class public final synthetic Lcom/tebakgambar/tutorial/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/tutorial/a;->o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/tutorial/a;->o:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->U0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.tutorial.b (com.tebakgambar.tutorial.b)
.class public final synthetic Lcom/tebakgambar/tutorial/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/tutorial/b;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/tutorial/b;->a:Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;->V0(Lcom/tebakgambar/tutorial/ClueEventTutorialActivity;Z)V

    return-void
.end method
