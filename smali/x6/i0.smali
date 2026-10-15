###### Class x6.i0 (x6.i0)
.class public final Lx6/i0;
.super Ljava/lang/Object;
.source "SessionLifecycleServiceBinder.kt"

# interfaces
.implements Lx6/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/i0$a;
    }
.end annotation


# static fields
.field public static final c:Lx6/i0$a;


# instance fields
.field private final b:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/i0$a;-><init>(Lt9/g;)V

    sput-object v0, Lx6/i0;->c:Lx6/i0$a;

    return-void
.end method

.method public constructor <init>(Lb5/g;)V
    .registers 3

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/i0;->b:Lb5/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V
    .registers 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceConnection"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx6/i0;->b:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/firebase/sessions/SessionLifecycleService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "LifecycleServiceBinder"

    const-string v3, "Binding service to application."

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ClientCallbackMessenger"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x41

    .line 6
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

###### Class x6.i0.a (x6.i0$a)
.class public final Lx6/i0$a;
.super Ljava/lang/Object;
.source "SessionLifecycleServiceBinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lx6/i0$a;-><init>()V

    return-void
.end method
