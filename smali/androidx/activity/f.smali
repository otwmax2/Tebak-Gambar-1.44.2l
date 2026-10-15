###### Class androidx.activity.f (androidx.activity.f)
.class public Landroidx/activity/f;
.super Landroid/app/Dialog;
.source "ComponentDialog.kt"

# interfaces
.implements Landroidx/lifecycle/n;
.implements Landroidx/activity/i;


# instance fields
.field private o:Landroidx/lifecycle/o;

.field private final p:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance p2, Landroidx/activity/e;

    invoke-direct {p2, p0}, Landroidx/activity/e;-><init>(Landroidx/activity/f;)V

    invoke-direct {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/f;->p:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method

.method public static synthetic a(Landroidx/activity/f;)V
    .registers 1

    invoke-static {p0}, Landroidx/activity/f;->c(Landroidx/activity/f;)V

    return-void
.end method

.method private final b()Landroidx/lifecycle/o;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/f;->o:Landroidx/lifecycle/o;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p0}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/n;)V

    .line 2
    iput-object v0, p0, Landroidx/activity/f;->o:Landroidx/lifecycle/o;

    :cond_b
    return-object v0
.end method

.method private static final c(Landroidx/activity/f;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/j;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/f;->b()Landroidx/lifecycle/o;

    move-result-object v0

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/f;->p:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/f;->p:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->g()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_12

    .line 3
    iget-object p1, p0, Landroidx/activity/f;->p:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->h(Landroid/window/OnBackInvokedDispatcher;)V

    .line 4
    :cond_12
    invoke-direct {p0}, Landroidx/activity/f;->b()Landroidx/lifecycle/o;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-direct {p0}, Landroidx/activity/f;->b()Landroidx/lifecycle/o;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/f;->b()Landroidx/lifecycle/o;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/activity/f;->o:Landroidx/lifecycle/o;

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

###### Class androidx.activity.e (androidx.activity.e)
.class public final synthetic Landroidx/activity/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/activity/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/e;->o:Landroidx/activity/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/activity/e;->o:Landroidx/activity/f;

    invoke-static {v0}, Landroidx/activity/f;->a(Landroidx/activity/f;)V

    return-void
.end method
