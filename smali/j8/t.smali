###### Class j8.t (j8.t)
.class public abstract Lj8/t;
.super Landroidx/appcompat/app/c;
.source "BaseActivity.java"


# instance fields
.field private q:Ljava/lang/Runnable;

.field private r:Landroid/os/Handler;

.field private s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private t:Landroid/view/View;

.field private u:Lj8/k0;

.field private v:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private w:Lj8/x;

.field private x:Lj8/c0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method private F0(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    const-string v0, "firebaseDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/n;->i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_18

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    .line 3
    new-instance v1, Ls8/f;

    invoke-direct {v1}, Ls8/f;-><init>()V

    .line 4
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/d;->show(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method private G0(Ljava/lang/Boolean;)V
    .registers 10

    .line 1
    new-instance p1, Lj8/c0;

    const v0, 0x7f120150

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120152

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f12014f

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f12005d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f1300ec

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lj8/c0;->s()V

    .line 7
    new-instance v0, Lj8/t$c;

    invoke-direct {v0, p0, p1}, Lj8/t$c;-><init>(Lj8/t;Lj8/c0;)V

    invoke-virtual {p1, v0}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 8
    invoke-virtual {p1}, Lj8/c0;->show()V

    return-void
.end method

.method private K0(Z)V
    .registers 2

    if-eqz p1, :cond_d

    .line 1
    iget-object p1, p0, Lj8/t;->x:Lj8/c0;

    if-nez p1, :cond_17

    .line 2
    invoke-virtual {p0}, Lj8/t;->I0()Lj8/c0;

    move-result-object p1

    iput-object p1, p0, Lj8/t;->x:Lj8/c0;

    goto :goto_17

    .line 3
    :cond_d
    iget-object p1, p0, Lj8/t;->x:Lj8/c0;

    if-eqz p1, :cond_17

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj8/t;->x:Lj8/c0;

    :cond_17
    :goto_17
    return-void
.end method

.method private L0(Lcom/tebakgambar/model/CustomBanner;)V
    .registers 5

    .line 1
    new-instance v0, Lj8/b0;

    const v1, 0x7f1300ec

    invoke-direct {v0, p0, v1}, Lj8/b0;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, v0, Lj8/b0;->q:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, p1, Lcom/tebakgambar/model/CustomBanner;->positive:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lj8/b0;->p:Lcom/tebakgambar/component/CustomButton;

    iget-object v2, p1, Lcom/tebakgambar/model/CustomBanner;->negative:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v1

    iget-object p1, p1, Lcom/tebakgambar/model/CustomBanner;->imageUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    const v1, 0x7f08005a

    .line 6
    invoke-virtual {p1, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    sget-object v1, Lb2/b;->r:Lb2/b;

    .line 8
    invoke-virtual {p1, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object p1

    iget-object v1, v0, Lj8/b0;->o:Lcom/tebakgambar/component/CustomImageView;

    .line 10
    invoke-virtual {p1, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 11
    new-instance p1, Lj8/c;

    invoke-direct {p1, v0}, Lj8/c;-><init>(Lj8/b0;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    new-instance p1, Lj8/t$b;

    invoke-direct {p1, p0, v0}, Lj8/t$b;-><init>(Lj8/t;Lj8/b0;)V

    invoke-virtual {v0, p1}, Lj8/b0;->a(Lj8/b0$a;)V

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private N0(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lj8/b1;

    invoke-direct {v0, p0}, Lj8/b1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lj8/b1;->g(Ljava/lang/CharSequence;)Lj8/b1;

    move-result-object p1

    const v0, 0x7f120030

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lj8/k;

    invoke-direct {v1, p0}, Lj8/k;-><init>(Lj8/t;)V

    invoke-virtual {p1, v0, v1}, Lj8/b1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;

    move-result-object p1

    new-instance v0, Lj8/l;

    invoke-direct {v0, p0}, Lj8/l;-><init>(Lj8/t;)V

    .line 4
    invoke-virtual {p1, v0}, Lj8/b1;->h(Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic O(Lj8/t;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->F0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic P(Lj8/t;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->u0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private P0()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f1200c8

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->f(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lj8/t;->v:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->C()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lj8/f;

    invoke-direct {v1, p0}, Lj8/f;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/tasks/Task;->b(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic Q(Lj8/t;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lj8/t;->w0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lj8/b0;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lj8/t;->q0(Lj8/b0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic S(Lj8/t;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T(Lj8/t;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->v0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic U(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lj8/t;->p0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic V(Lj8/t;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/t;->s0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic W(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lj8/t;->o0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic X(Lj8/t;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->K0(Z)V

    return-void
.end method

.method public static synthetic Y(Lj8/t;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->G0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Z(Lj8/t;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->x0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic a0(Lj8/t;Lj8/c0;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/t;->t0(Lj8/c0;)V

    return-void
.end method

.method public static synthetic b0(Lj8/t;)V
    .registers 1

    invoke-direct {p0}, Lj8/t;->n0()V

    return-void
.end method

.method public static synthetic c0(Lj8/t;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/t;->r0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic e0(Lj8/t;Lcom/tebakgambar/model/CustomBanner;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj8/t;->L0(Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

.method static synthetic f0(Lj8/t;)Lj8/x;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/t;->w:Lj8/x;

    return-object p0
.end method

.method private synthetic n0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/t;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lj8/t;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lj8/t;->A0(Z)V

    goto :goto_2a

    :cond_26
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lj8/t;->A0(Z)V

    :goto_2a
    return-void
.end method

.method private static synthetic o0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic p0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic q0(Lj8/b0;Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic r0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lj8/t;->w:Lj8/x;

    invoke-virtual {p1}, Lj8/x;->z()V

    return-void
.end method

.method private synthetic s0(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lj8/t;->w:Lj8/x;

    invoke-virtual {p1}, Lj8/x;->A()V

    return-void
.end method

.method private synthetic t0(Lj8/c0;)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2
    :goto_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_17

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    goto :goto_1b

    .line 4
    :cond_17
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    :goto_1b
    xor-int/2addr v0, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_22
    return-void
.end method

.method private synthetic u0(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p0}, Lj8/t;->z0()V

    :cond_9
    return-void
.end method

.method private synthetic v0(Landroid/content/Intent;)V
    .registers 3

    const/16 v0, 0x232a

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic w0()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0}, Lj8/t;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/games/Games;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/tebakgambar/model/Level;->getAllLevels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/Level;

    .line 4
    iget v4, v3, Lcom/tebakgambar/model/Level;->id:I

    if-gt v4, v0, :cond_16

    .line 5
    iget-object v3, v3, Lcom/tebakgambar/model/Level;->achievementId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/google/android/gms/games/AchievementsClient;->e(Ljava/lang/String;)V

    goto :goto_16

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic x0(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "1"

    .line 2
    invoke-static {p0, v0}, Ly8/y;->i0(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/y;->r0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected A0(Z)V
    .registers 2

    return-void
.end method

.method protected B0([Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lj8/t;->q:Ljava/lang/Runnable;

    const/16 p2, 0x37

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method protected C0(Lj8/x;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj8/t;->w:Lj8/x;

    .line 2
    iget-object v0, p1, Lj8/x;->s:Ly8/u;

    new-instance v1, Lj8/d;

    invoke-direct {v1, p0}, Lj8/d;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 3
    iget-object v0, p1, Lj8/x;->w:Ly8/u;

    new-instance v1, Lj8/r;

    invoke-direct {v1, p0}, Lj8/r;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 4
    iget-object v0, p1, Lj8/x;->x:Ly8/u;

    new-instance v1, Lj8/s;

    invoke-direct {v1, p0}, Lj8/s;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 5
    iget-object v0, p1, Lj8/x;->v:Landroidx/lifecycle/t;

    new-instance v1, Lj8/q;

    invoke-direct {v1, p0}, Lj8/q;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 6
    iget-object v0, p1, Lj8/x;->t:Ly8/u;

    new-instance v1, Lj8/p;

    invoke-direct {v1, p0}, Lj8/p;-><init>(Lj8/t;)V

    invoke-virtual {v0, p0, v1}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p1, Lj8/x;->u:Ly8/u;

    new-instance v0, Lj8/e;

    invoke-direct {v0, p0}, Lj8/e;-><init>(Lj8/t;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

.method protected D0(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lj8/t;->E0(ILjava/lang/String;)V

    return-void
.end method

.method protected E0(ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lj8/k0;->N(Ljava/lang/String;)Lj8/k0;

    move-result-object p2

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    .line 6
    iput-object p2, p0, Lj8/t;->u:Lj8/k0;

    return-void
.end method

.method protected H0(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lj8/b1;

    invoke-direct {v0, p0}, Lj8/b1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lj8/b1;->g(Ljava/lang/CharSequence;)Lj8/b1;

    move-result-object p1

    const v0, 0x7f120048

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj8/n;->o:Lj8/n;

    invoke-virtual {p1, v0, v1}, Lj8/b1;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;

    move-result-object p1

    sget-object v0, Lj8/m;->o:Lj8/m;

    .line 4
    invoke-virtual {p1, v0}, Lj8/b1;->h(Landroid/content/DialogInterface$OnClickListener;)Lj8/b1;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected I0()Lj8/c0;
    .registers 2

    const v0, 0x7f12014a

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj8/t;->J0(Ljava/lang/String;)Lj8/c0;

    move-result-object v0

    return-object v0
.end method

.method protected J0(Ljava/lang/String;)Lj8/c0;
    .registers 9

    .line 1
    new-instance v6, Lj8/c0;

    const v0, 0x7f0701e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {v6}, Lj8/c0;->show()V

    return-object v6
.end method

.method protected M0(Lcom/tebakgambar/model/CustomBanner;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lj8/t;->w:Lj8/x;

    invoke-virtual {v0}, Lj8/x;->D()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    .line 2
    invoke-direct {p0, p1}, Lj8/t;->L0(Lcom/tebakgambar/model/CustomBanner;)V

    goto :goto_28

    .line 3
    :cond_c
    new-instance v0, Lj8/c0;

    const v3, 0x7f1300ec

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lj8/c0;->d()V

    .line 5
    new-instance v1, Lj8/t$a;

    invoke-direct {v1, p0, v0, p1}, Lj8/t$a;-><init>(Lj8/t;Lj8/c0;Lcom/tebakgambar/model/CustomBanner;)V

    invoke-virtual {v0, v1}, Lj8/c0;->o(Lj8/c0$i;)V

    .line 6
    invoke-virtual {v0}, Lj8/c0;->show()V

    :goto_28
    return-void
.end method

.method protected O0(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v6, Lj8/c0;

    const v0, 0x7f0701ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {v6}, Lj8/c0;->show()V

    .line 3
    invoke-virtual {p0}, Lj8/t;->g0()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lj8/i;

    invoke-direct {v0, p0, v6}, Lj8/i;-><init>(Lj8/t;Lj8/c0;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected Q0()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Lj8/t;->S0()V

    .line 3
    invoke-virtual {p0}, Lj8/t;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lj8/h;

    invoke-direct {v1, p0}, Lj8/h;-><init>(Lj8/t;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->i(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected R0()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lj8/t;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    const/16 v1, 0x2329

    if-nez v0, :cond_25

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->A:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lj8/t;->v:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->z()Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_35

    :cond_25
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    .line 6
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->e(Landroid/app/Activity;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)V

    :goto_35
    return-void
.end method

.method protected S0()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Lj8/j;

    invoke-direct {v0, p0}, Lj8/j;-><init>(Lj8/t;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method protected T0()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Lj8/t;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->c(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/games/PlayersClient;->f()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lj8/g;

    invoke-direct {v1, p0}, Lj8/g;-><init>(Lj8/t;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected g0()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t;->r:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lj8/t;->r:Landroid/os/Handler;

    .line 3
    :cond_b
    iget-object v0, p0, Lj8/t;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public h0()Lj8/k0;
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t;->u:Lj8/k0;

    return-object v0
.end method

.method public i0()Landroid/content/Context;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lj8/t;->m0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method protected k0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l0()Z
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    new-array v3, v1, [Lcom/google/android/gms/common/api/Scope;

    .line 2
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    const-string v5, "https://www.googleapis.com/auth/games_lite"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public m0(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_24

    .line 2
    check-cast p1, Landroid/app/Activity;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1d

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_1c
    return v0

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2329

    if-ne p1, p2, :cond_31

    .line 2
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->b()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 4
    invoke-virtual {p0}, Lj8/t;->z0()V

    goto :goto_31

    .line 5
    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->V2()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y3()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2e

    :cond_27
    const p1, 0x7f1201c2

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_2e
    invoke-virtual {p0, p1}, Lj8/t;->y0(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 2
    iget-object v0, p0, Lj8/t;->t:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lj8/t;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_10
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0x37

    if-ne p1, p2, :cond_14

    .line 1
    invoke-static {p3}, Ly8/o;->b([I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lj8/t;->q:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_11
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lj8/t;->q:Ljava/lang/Runnable;

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    invoke-virtual {p0}, Lj8/t;->k0()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3
    invoke-direct {p0}, Lj8/t;->P0()V

    :cond_12
    return-void
.end method

.method public setContentView(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lj8/t;->t:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lj8/o;

    invoke-direct {v0, p0}, Lj8/o;-><init>(Lj8/t;)V

    iput-object v0, p0, Lj8/t;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected y0(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected z0()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lj8/t;->l0()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Lj8/t;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->b(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/GamesClient;->d(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    .line 3
    invoke-virtual {p0}, Lj8/t;->S0()V

    .line 4
    invoke-virtual {p0}, Lj8/t;->T0()V

    return-void
.end method

###### Class j8.t.a (j8.t$a)
.class Lj8/t$a;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/t;->M0(Lcom/tebakgambar/model/CustomBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Lcom/tebakgambar/model/CustomBanner;

.field final synthetic c:Lj8/t;


# direct methods
.method constructor <init>(Lj8/t;Lj8/c0;Lcom/tebakgambar/model/CustomBanner;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj8/t$a;->c:Lj8/t;

    iput-object p2, p0, Lj8/t$a;->a:Lj8/c0;

    iput-object p3, p0, Lj8/t$a;->b:Lcom/tebakgambar/model/CustomBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/t$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lj8/t$a;->c:Lj8/t;

    iget-object v1, p0, Lj8/t$a;->b:Lcom/tebakgambar/model/CustomBanner;

    invoke-static {v0, v1}, Lj8/t;->e0(Lj8/t;Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/t$a;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lj8/t$a;->c:Lj8/t;

    iget-object v1, p0, Lj8/t$a;->b:Lcom/tebakgambar/model/CustomBanner;

    invoke-static {v0, v1}, Lj8/t;->e0(Lj8/t;Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

###### Class j8.t.b (j8.t$b)
.class Lj8/t$b;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lj8/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/t;->L0(Lcom/tebakgambar/model/CustomBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/b0;

.field final synthetic b:Lj8/t;


# direct methods
.method constructor <init>(Lj8/t;Lj8/b0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/t$b;->b:Lj8/t;

    iput-object p2, p0, Lj8/t$b;->a:Lj8/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t$b;->a:Lj8/b0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t$b;->a:Lj8/b0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t$b;->a:Lj8/b0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class j8.t.c (j8.t$c)
.class Lj8/t$c;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lj8/c0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/t;->G0(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/c0;

.field final synthetic b:Lj8/t;


# direct methods
.method constructor <init>(Lj8/t;Lj8/c0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj8/t$c;->b:Lj8/t;

    iput-object p2, p0, Lj8/t$c;->a:Lj8/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t$c;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lj8/t$c;->b:Lj8/t;

    invoke-static {v0}, Lj8/t;->f0(Lj8/t;)Lj8/x;

    move-result-object v0

    invoke-virtual {v0}, Lj8/x;->x()V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/t$c;->a:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class j8.c (j8.c)
.class public final synthetic Lj8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic o:Lj8/b0;


# direct methods
.method public synthetic constructor <init>(Lj8/b0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/c;->o:Lj8/b0;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lj8/c;->o:Lj8/b0;

    invoke-static {v0, p1}, Lj8/t;->R(Lj8/b0;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class j8.d (j8.d)
.class public final synthetic Lj8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/d;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/d;->a:Lj8/t;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    return-void
.end method

###### Class j8.e (j8.e)
.class public final synthetic Lj8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/e;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/e;->a:Lj8/t;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lj8/t;->S(Lj8/t;Ljava/lang/String;)V

    return-void
.end method

###### Class j8.f (j8.f)
.class public final synthetic Lj8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/f;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lj8/f;->a:Lj8/t;

    invoke-static {v0, p1}, Lj8/t;->P(Lj8/t;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class j8.g (j8.g)
.class public final synthetic Lj8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/g;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lj8/g;->a:Lj8/t;

    invoke-static {v0, p1}, Lj8/t;->Z(Lj8/t;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class j8.h (j8.h)
.class public final synthetic Lj8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/h;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/h;->a:Lj8/t;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lj8/t;->T(Lj8/t;Landroid/content/Intent;)V

    return-void
.end method

###### Class j8.i (j8.i)
.class public final synthetic Lj8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lj8/t;

.field public final synthetic p:Lj8/c0;


# direct methods
.method public synthetic constructor <init>(Lj8/t;Lj8/c0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/i;->o:Lj8/t;

    iput-object p2, p0, Lj8/i;->p:Lj8/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lj8/i;->o:Lj8/t;

    iget-object v1, p0, Lj8/i;->p:Lj8/c0;

    invoke-static {v0, v1}, Lj8/t;->a0(Lj8/t;Lj8/c0;)V

    return-void
.end method

###### Class j8.j (j8.j)
.class public final synthetic Lj8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/j;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lj8/j;->a:Lj8/t;

    invoke-static {v0}, Lj8/t;->Q(Lj8/t;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class j8.k (j8.k)
.class public final synthetic Lj8/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/k;->o:Lj8/t;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lj8/k;->o:Lj8/t;

    invoke-static {v0, p1, p2}, Lj8/t;->V(Lj8/t;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class j8.l (j8.l)
.class public final synthetic Lj8/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/l;->o:Lj8/t;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lj8/l;->o:Lj8/t;

    invoke-static {v0, p1, p2}, Lj8/t;->c0(Lj8/t;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class j8.m (j8.m)
.class public final synthetic Lj8/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lj8/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lj8/m;

    invoke-direct {v0}, Lj8/m;-><init>()V

    sput-object v0, Lj8/m;->o:Lj8/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lj8/t;->U(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class j8.n (j8.n)
.class public final synthetic Lj8/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lj8/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lj8/n;

    invoke-direct {v0}, Lj8/n;-><init>()V

    sput-object v0, Lj8/n;->o:Lj8/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lj8/t;->W(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class j8.o (j8.o)
.class public final synthetic Lj8/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic o:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/o;->o:Lj8/t;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lj8/o;->o:Lj8/t;

    invoke-static {v0}, Lj8/t;->b0(Lj8/t;)V

    return-void
.end method

###### Class j8.p (j8.p)
.class public final synthetic Lj8/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/p;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/p;->a:Lj8/t;

    check-cast p1, Lcom/tebakgambar/model/CustomBanner;

    invoke-virtual {v0, p1}, Lj8/t;->M0(Lcom/tebakgambar/model/CustomBanner;)V

    return-void
.end method

###### Class j8.q (j8.q)
.class public final synthetic Lj8/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/q;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/q;->a:Lj8/t;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lj8/t;->X(Lj8/t;Z)V

    return-void
.end method

###### Class j8.r (j8.r)
.class public final synthetic Lj8/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/r;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/r;->a:Lj8/t;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lj8/t;->O(Lj8/t;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class j8.s (j8.s)
.class public final synthetic Lj8/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/t;


# direct methods
.method public synthetic constructor <init>(Lj8/t;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/s;->a:Lj8/t;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lj8/s;->a:Lj8/t;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lj8/t;->Y(Lj8/t;Ljava/lang/Boolean;)V

    return-void
.end method
