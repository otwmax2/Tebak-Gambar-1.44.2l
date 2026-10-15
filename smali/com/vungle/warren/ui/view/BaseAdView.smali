###### Class com.vungle.warren.ui.view.BaseAdView (com.vungle.warren.ui.view.BaseAdView)
.class public abstract Lcom/vungle/warren/ui/view/BaseAdView;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/AdContract$AdView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/ui/contract/AdContract$AdView<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/vungle/warren/ui/OrientationDelegate;

.field private final p:Lcom/vungle/warren/ui/CloseDelegate;

.field protected q:Landroid/os/Handler;

.field protected final r:Ljava/lang/String;

.field protected final s:Lcom/vungle/warren/ui/view/FullAdWidget;

.field protected final t:Landroid/content/Context;

.field protected u:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/ui/view/FullAdWidget;Lcom/vungle/warren/ui/OrientationDelegate;Lcom/vungle/warren/ui/CloseDelegate;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->q:Landroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView;->t:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/ui/view/BaseAdView;->o:Lcom/vungle/warren/ui/OrientationDelegate;

    .line 7
    iput-object p4, p0, Lcom/vungle/warren/ui/view/BaseAdView;->p:Lcom/vungle/warren/ui/CloseDelegate;

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/DialogInterface$OnDismissListener;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/ui/view/BaseAdView$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/BaseAdView$2;-><init>(Lcom/vungle/warren/ui/view/BaseAdView;)V

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->p:Lcom/vungle/warren/ui/CloseDelegate;

    invoke-interface {v0}, Lcom/vungle/warren/ui/CloseDelegate;->close()V

    return-void
.end method

.method public destroyAdView(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/warren/ui/view/FullAdWidget;->release(J)V

    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->hasWebView()Z

    move-result v0

    return v0
.end method

.method public isDialogVisible()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public open(Ljava/lang/String;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->t:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 3
    iget-object p2, p0, Lcom/vungle/warren/ui/view/BaseAdView;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method

.method public pauseWeb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->pauseWeb()V

    return-void
.end method

.method public refreshDialogIfVisible()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/BaseAdView;->isDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    new-instance v1, Lcom/vungle/warren/ui/view/BaseAdView$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/BaseAdView$3;-><init>(Lcom/vungle/warren/ui/view/BaseAdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1a
    return-void
.end method

.method public removeWebView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/ui/view/FullAdWidget;->destroyWebView(J)V

    return-void
.end method

.method public resumeWeb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->resumeWeb()V

    return-void
.end method

.method public setImmersiveMode()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->setImmersiveMode()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->o:Lcom/vungle/warren/ui/OrientationDelegate;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/OrientationDelegate;->setOrientation(I)V

    return-void
.end method

.method public showCloseButton()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView;->s:Lcom/vungle/warren/ui/view/FullAdWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->showCloseButton(Z)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 10

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/BaseAdView;->t:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/BaseAdView;->a()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/vungle/warren/ui/view/BaseAdView$1;

    invoke-direct {v2, p0, p5}, Lcom/vungle/warren/ui/view/BaseAdView$1;-><init>(Lcom/vungle/warren/ui/view/BaseAdView;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4
    new-instance p5, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;

    invoke-direct {p5, v2, v1}, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7
    :cond_29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 8
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9
    :cond_32
    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    .line 13
    invoke-static {p5, p1}, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->a(Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;Landroid/app/Dialog;)V

    .line 14
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class com.vungle.warren.ui.view.BaseAdView.AnonymousClass1 (com.vungle.warren.ui.view.BaseAdView$1)
.class Lcom/vungle/warren/ui/view/BaseAdView$1;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/BaseAdView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic p:Lcom/vungle/warren/ui/view/BaseAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/BaseAdView;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->p:Lcom/vungle/warren/ui/view/BaseAdView;

    iput-object p2, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->p:Lcom/vungle/warren/ui/view/BaseAdView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$1;->o:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_c

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_c
    return-void
.end method

###### Class com.vungle.warren.ui.view.BaseAdView.AnonymousClass2 (com.vungle.warren.ui.view.BaseAdView$2)
.class Lcom/vungle/warren/ui/view/BaseAdView$2;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/BaseAdView;->a()Landroid/content/DialogInterface$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/BaseAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/BaseAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$2;->o:Lcom/vungle/warren/ui/view/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$2;->o:Lcom/vungle/warren/ui/view/BaseAdView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    return-void
.end method

###### Class com.vungle.warren.ui.view.BaseAdView.AnonymousClass3 (com.vungle.warren.ui.view.BaseAdView$3)
.class Lcom/vungle/warren/ui/view/BaseAdView$3;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/BaseAdView;->refreshDialogIfVisible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/BaseAdView;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/BaseAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$3;->o:Lcom/vungle/warren/ui/view/BaseAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$3;->o:Lcom/vungle/warren/ui/view/BaseAdView;

    iget-object v0, p1, Lcom/vungle/warren/ui/view/BaseAdView;->u:Landroid/app/Dialog;

    invoke-virtual {p1}, Lcom/vungle/warren/ui/view/BaseAdView;->a()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.BaseAdView.DialogClickListenerProxy (com.vungle.warren.ui.view.BaseAdView$DialogClickListenerProxy)
.class Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/BaseAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogClickListenerProxy"
.end annotation


# instance fields
.field private o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/DialogInterface$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;Landroid/app/Dialog;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private b(Landroid/app/Dialog;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_10

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_10
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 3
    :cond_d
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
