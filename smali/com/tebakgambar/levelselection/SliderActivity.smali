###### Class com.tebakgambar.levelselection.SliderActivity (com.tebakgambar.levelselection.SliderActivity)
.class public Lcom/tebakgambar/levelselection/SliderActivity;
.super Lj8/t;
.source "SliderActivity.java"


# instance fields
.field public levelId:I

.field private y:Lo8/u;

.field private z:Lcom/tebakgambar/levelselection/p0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/levelselection/SliderActivity;Lcom/tebakgambar/model/Level;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->Y0(Lcom/tebakgambar/model/Level;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/levelselection/SliderActivity;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->X0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic W0(Lcom/tebakgambar/levelselection/SliderActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->Z0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic X0(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic Y0(Lcom/tebakgambar/model/Level;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic Z0(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/p0;->p()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/levelselection/p0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/levelselection/p0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    const p1, 0x7f0d002b

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/u;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->y:Lo8/u;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    invoke-virtual {p1, v0}, Lo8/u;->u0(Lcom/tebakgambar/levelselection/p0;)V

    .line 5
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/p0;->t:Ly8/u;

    new-instance v0, Lcom/tebakgambar/levelselection/m0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/m0;-><init>(Lcom/tebakgambar/levelselection/SliderActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/p0;->s:Ly8/u;

    new-instance v0, Lcom/tebakgambar/levelselection/l0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/l0;-><init>(Lcom/tebakgambar/levelselection/SliderActivity;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->z:Lcom/tebakgambar/levelselection/p0;

    iget v0, p0, Lcom/tebakgambar/levelselection/SliderActivity;->levelId:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/p0;->q(I)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/SliderActivity;->y:Lo8/u;

    iget-object p1, p1, Lo8/u;->O:Lcom/tebakgambar/component/CustomButton;

    new-instance v0, Lcom/tebakgambar/levelselection/k0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/k0;-><init>(Lcom/tebakgambar/levelselection/SliderActivity;)V

    invoke-virtual {p1, v0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.k0 (com.tebakgambar.levelselection.k0)
.class public final synthetic Lcom/tebakgambar/levelselection/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/SliderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/SliderActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/k0;->o:Lcom/tebakgambar/levelselection/SliderActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/k0;->o:Lcom/tebakgambar/levelselection/SliderActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->W0(Lcom/tebakgambar/levelselection/SliderActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.l0 (com.tebakgambar.levelselection.l0)
.class public final synthetic Lcom/tebakgambar/levelselection/l0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/SliderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/SliderActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/l0;->a:Lcom/tebakgambar/levelselection/SliderActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/l0;->a:Lcom/tebakgambar/levelselection/SliderActivity;

    check-cast p1, Lcom/tebakgambar/model/Level;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->U0(Lcom/tebakgambar/levelselection/SliderActivity;Lcom/tebakgambar/model/Level;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.m0 (com.tebakgambar.levelselection.m0)
.class public final synthetic Lcom/tebakgambar/levelselection/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/SliderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/SliderActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/m0;->a:Lcom/tebakgambar/levelselection/SliderActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/m0;->a:Lcom/tebakgambar/levelselection/SliderActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/SliderActivity;->V0(Lcom/tebakgambar/levelselection/SliderActivity;Ljava/lang/Integer;)V

    return-void
.end method
