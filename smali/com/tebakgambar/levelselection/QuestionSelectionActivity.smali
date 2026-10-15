###### Class com.tebakgambar.levelselection.QuestionSelectionActivity (com.tebakgambar.levelselection.QuestionSelectionActivity)
.class public Lcom/tebakgambar/levelselection/QuestionSelectionActivity;
.super Lj8/t;
.source "QuestionSelectionActivity.java"

# interfaces
.implements Lcom/tebakgambar/levelselection/c0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;
    }
.end annotation


# instance fields
.field private A:Lcom/tebakgambar/levelselection/c0;

.field private B:Lj8/c0;

.field public isQuestionNotEligible:Z

.field level:I

.field private y:Lo8/m;

.field private z:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->Y0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->X0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic W0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->a1()V

    return-void
.end method

.method private X0(Ljava/lang/Boolean;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->B:Lj8/c0;

    if-nez v0, :cond_2f

    .line 2
    new-instance p1, Lj8/c0;

    const v3, 0x7f1300ec

    const/4 v4, 0x1

    const v0, 0x7f12014a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0701e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->B:Lj8/c0;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->B:Lj8/c0;

    invoke-virtual {p1}, Lj8/c0;->show()V

    goto :goto_3f

    .line 5
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->B:Lj8/c0;

    if-eqz p1, :cond_3f

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->B:Lj8/c0;

    :cond_3f
    :goto_3f
    return-void
.end method

.method private Y0(Ljava/lang/Boolean;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 2
    new-instance p1, Lj8/c0;

    const v2, 0x7f1300ec

    const/4 v3, 0x0

    const v0, 0x7f12014c

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v0, 0x7f120142

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f12005d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lj8/c0;->d()V

    .line 7
    new-instance v0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;-><init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Lj8/c0;)V

    invoke-virtual {p1, v0}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 8
    invoke-virtual {p1}, Lj8/c0;->show()V

    :cond_35
    return-void
.end method

.method private Z0()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$b;-><init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private a1()V
    .registers 3

    .line 1
    invoke-static {p0}, Landroidx/core/app/j;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroidx/core/app/j;->f(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_15

    .line 3
    :cond_11
    invoke-static {p0, v0}, Landroidx/core/app/j;->e(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_20

    .line 4
    :cond_15
    :goto_15
    invoke-static {p0}, Landroidx/core/app/t;->k(Landroid/content/Context;)Landroidx/core/app/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/t;->g(Landroid/content/Intent;)Landroidx/core/app/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/t;->l()V

    :goto_20
    return-void
.end method

.method private b1()V
    .registers 2

    const v0, 0x7f120164

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj8/t;->H0(Ljava/lang/String;)V

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

    const-class v0, Lcom/tebakgambar/levelselection/j0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/levelselection/j0;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    const p1, 0x7f0d0025

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/m;

    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->y:Lo8/m;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    invoke-virtual {p1, v0}, Lo8/m;->w0(Lcom/tebakgambar/levelselection/j0;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->y:Lo8/m;

    new-instance v0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;-><init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V

    invoke-virtual {p1, v0}, Lo8/m;->u0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;)V

    .line 6
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/levelselection/b0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/b0;-><init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/j0;->v:Landroidx/lifecycle/t;

    new-instance v0, Lcom/tebakgambar/levelselection/a0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/a0;-><init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    iget v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->level:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/j0;->H(I)V

    .line 10
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->y:Lo8/m;

    iget-object p1, p1, Lo8/m;->Q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 11
    new-instance p1, Lcom/tebakgambar/levelselection/c0;

    invoke-direct {p1}, Lcom/tebakgambar/levelselection/c0;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->A:Lcom/tebakgambar/levelselection/c0;

    .line 12
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/j0;->w:Lcom/tebakgambar/levelselection/c0$d;

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/c0;->x(Lcom/tebakgambar/levelselection/c0$d;)V

    .line 13
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->A:Lcom/tebakgambar/levelselection/c0;

    invoke-virtual {p1, p0}, Lcom/tebakgambar/levelselection/c0;->w(Lcom/tebakgambar/levelselection/c0$b;)V

    .line 14
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->y:Lo8/m;

    iget-object p1, p1, Lo8/m;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->A:Lcom/tebakgambar/levelselection/c0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const p1, 0x7f0a0120

    const-string v0, "ca-app-pub-7269282889157841/4242111423"

    .line 15
    invoke-virtual {p0, p1, v0}, Lj8/t;->E0(ILjava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    const-string v0, "sub level page"

    iput-object v0, p1, Lj8/k0;->H:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lj8/t;->h0()Lj8/k0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lj8/k0;->I:Ljava/lang/String;

    .line 18
    iget-boolean p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->isQuestionNotEligible:Z

    if-eqz p1, :cond_a9

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->isQuestionNotEligible:Z

    .line 20
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->b1()V

    .line 21
    :cond_a9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/j0;->q()Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 22
    new-instance p1, Lh8/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lh8/a;-><init>(Z)V

    invoke-static {p1}, Ll8/d;->z(Lh8/a;)Ll8/d;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v1, "TGInAppReviewDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->show(Landroidx/fragment/app/n;Ljava/lang/String;)V

    .line 24
    :cond_c4
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->Z0()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lj8/t;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->z:Lcom/tebakgambar/levelselection/j0;

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/j0;->u()V

    return-void
.end method

.method public s(Lcom/tebakgambar/model/QuestionSavedData;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickSubLevelPage"

    const-string v2, "sub level page"

    const-string v3, "click on sub level"

    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110005

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 3
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->h()Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->questionGlobalIndex(I)Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.QuestionSelectionActivity.a (com.tebakgambar.levelselection.QuestionSelectionActivity$a)
.class Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;
.super Ljava/lang/Object;
.source "QuestionSelectionActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->Y0(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Lj8/c0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->b:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->a:Lj8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->b:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-static {v0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->showLoginImmediately(Z)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->b:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->b:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class com.tebakgambar.levelselection.QuestionSelectionActivity.b (com.tebakgambar.levelselection.QuestionSelectionActivity$b)
.class Lcom/tebakgambar/levelselection/QuestionSelectionActivity$b;
.super Landroidx/activity/g;
.source "QuestionSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$b;->d:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$b;->d:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->W0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.QuestionSelectionActivity.c (com.tebakgambar.levelselection.QuestionSelectionActivity$c)
.class public Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;
.super Ljava/lang/Object;
.source "QuestionSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/QuestionSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$c;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->W0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.a0 (com.tebakgambar.levelselection.a0)
.class public final synthetic Lcom/tebakgambar/levelselection/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/a0;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/a0;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->U0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.b0 (com.tebakgambar.levelselection.b0)
.class public final synthetic Lcom/tebakgambar/levelselection/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/b0;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/b0;->a:Lcom/tebakgambar/levelselection/QuestionSelectionActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity;->V0(Lcom/tebakgambar/levelselection/QuestionSelectionActivity;Ljava/lang/Boolean;)V

    return-void
.end method
