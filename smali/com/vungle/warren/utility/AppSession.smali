###### Class com.vungle.warren.utility.AppSession (com.vungle.warren.utility.AppSession)
.class public Lcom/vungle/warren/utility/AppSession;
.super Ljava/lang/Object;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/AppSession$SessionCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/vungle/warren/SessionData;

.field private b:Lcom/vungle/warren/utility/AppSession$SessionCallback;

.field c:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/AppSession$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/AppSession$1;-><init>(Lcom/vungle/warren/utility/AppSession;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/AppSession;->c:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/AppSession;->a:Lcom/vungle/warren/SessionData;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/utility/AppSession;->b:Lcom/vungle/warren/utility/AppSession$SessionCallback;

    return-object p0
.end method


# virtual methods
.method public observe()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/AppSession;->c:Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    return-void
.end method

.method public setSessionCallback(Lcom/vungle/warren/utility/AppSession$SessionCallback;)Lcom/vungle/warren/utility/AppSession;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession;->b:Lcom/vungle/warren/utility/AppSession$SessionCallback;

    return-object p0
.end method

.method public setSessionData(Lcom/vungle/warren/SessionData;)Lcom/vungle/warren/utility/AppSession;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession;->a:Lcom/vungle/warren/SessionData;

    return-object p0
.end method

###### Class com.vungle.warren.utility.AppSession.AnonymousClass1 (com.vungle.warren.utility.AppSession$1)
.class Lcom/vungle/warren/utility/AppSession$1;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/vungle/warren/utility/AppSession;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/AppSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/utility/AppSession$1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vungle/warren/utility/AppSession$1;->a:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->a(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->a(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_4b

    iget-object v2, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v2}, Lcom/vungle/warren/utility/AppSession;->a(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/SessionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/SessionData;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4b

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v0}, Lcom/vungle/warren/utility/AppSession;->b(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/utility/AppSession$1;->b:Lcom/vungle/warren/utility/AppSession;

    invoke-static {v0}, Lcom/vungle/warren/utility/AppSession;->b(Lcom/vungle/warren/utility/AppSession;)Lcom/vungle/warren/utility/AppSession$SessionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/utility/AppSession$SessionCallback;->onSessionTimeout()V

    :cond_4b
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/utility/AppSession$1;->a:J

    return-void
.end method

###### Class com.vungle.warren.utility.AppSession.SessionCallback (com.vungle.warren.utility.AppSession$SessionCallback)
.class public interface abstract Lcom/vungle/warren/utility/AppSession$SessionCallback;
.super Ljava/lang/Object;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionCallback"
.end annotation


# virtual methods
.method public abstract onSessionTimeout()V
.end method
