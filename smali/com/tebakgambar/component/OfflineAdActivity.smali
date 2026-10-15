###### Class com.tebakgambar.component.OfflineAdActivity (com.tebakgambar.component.OfflineAdActivity)
.class public Lcom/tebakgambar/component/OfflineAdActivity;
.super Lj8/t;
.source "OfflineAdActivity.java"


# instance fields
.field public isFromIncreaseDialog:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/component/OfflineAdActivity;->isFromIncreaseDialog:Z

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/component/OfflineAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/component/OfflineAdActivity;->Y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V0(Lcom/tebakgambar/component/OfflineAdActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/component/OfflineAdActivity;->X0(Landroid/view/View;)V

    return-void
.end method

.method private W0()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/component/OfflineAdActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/component/OfflineAdActivity$a;-><init>(Lcom/tebakgambar/component/OfflineAdActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private synthetic X0(Landroid/view/View;)V
    .registers 2

    const-string p1, "http://tebakgambar.com/redirect/download/exit/exit-promote.html"

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic Y0(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 2
    invoke-virtual {p0, p1}, Lj8/t;->setContentView(I)V

    .line 3
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    const p1, 0x7f0a0146

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0a014b

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v1

    const-string v2, "http://tebakgambar.com/redirect/download/exit/exit-image.png"

    .line 7
    invoke-virtual {v1, v2}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v1

    const v2, 0x7f08005b

    .line 8
    invoke-virtual {v1, v2}, Lv1/c;->J(I)Lv1/c;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 10
    new-instance v1, Lj8/y0;

    invoke-direct {v1, p0}, Lj8/y0;-><init>(Lcom/tebakgambar/component/OfflineAdActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Lj8/x0;

    invoke-direct {p1, p0}, Lj8/x0;-><init>(Lcom/tebakgambar/component/OfflineAdActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0}, Lcom/tebakgambar/component/OfflineAdActivity;->W0()V

    return-void
.end method

###### Class com.tebakgambar.component.OfflineAdActivity.a (com.tebakgambar.component.OfflineAdActivity$a)
.class Lcom/tebakgambar/component/OfflineAdActivity$a;
.super Landroidx/activity/g;
.source "OfflineAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/component/OfflineAdActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/component/OfflineAdActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/OfflineAdActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/OfflineAdActivity$a;->d:Lcom/tebakgambar/component/OfflineAdActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/OfflineAdActivity$a;->d:Lcom/tebakgambar/component/OfflineAdActivity;

    iget-boolean v0, v0, Lcom/tebakgambar/component/OfflineAdActivity;->isFromIncreaseDialog:Z

    if-eqz v0, :cond_d

    .line 2
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->k()V

    .line 3
    :cond_d
    iget-object v0, p0, Lcom/tebakgambar/component/OfflineAdActivity$a;->d:Lcom/tebakgambar/component/OfflineAdActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

###### Class j8.x0 (j8.x0)
.class public final synthetic Lj8/x0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/component/OfflineAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/component/OfflineAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/x0;->o:Lcom/tebakgambar/component/OfflineAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/x0;->o:Lcom/tebakgambar/component/OfflineAdActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/component/OfflineAdActivity;->U0(Lcom/tebakgambar/component/OfflineAdActivity;Landroid/view/View;)V

    return-void
.end method

###### Class j8.y0 (j8.y0)
.class public final synthetic Lj8/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/component/OfflineAdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/component/OfflineAdActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/y0;->o:Lcom/tebakgambar/component/OfflineAdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lj8/y0;->o:Lcom/tebakgambar/component/OfflineAdActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/component/OfflineAdActivity;->V0(Lcom/tebakgambar/component/OfflineAdActivity;Landroid/view/View;)V

    return-void
.end method
