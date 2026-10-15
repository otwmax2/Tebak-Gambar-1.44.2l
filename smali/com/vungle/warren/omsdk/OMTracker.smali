###### Class com.vungle.warren.omsdk.OMTracker (com.vungle.warren.omsdk.OMTracker)
.class public Lcom/vungle/warren/omsdk/OMTracker;
.super Ljava/lang/Object;
.source "OMTracker.java"

# interfaces
.implements Lcom/vungle/warren/omsdk/WebViewObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/omsdk/OMTracker$Factory;
    }
.end annotation


# static fields
.field static final d:J


# instance fields
.field private final a:Z

.field private b:Z

.field private c:Lx7/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/warren/omsdk/OMTracker;->d:J

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/vungle/warren/omsdk/OMTracker;->a:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/vungle/warren/omsdk/OMTracker$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/omsdk/OMTracker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->b:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->c:Lx7/a;

    if-nez v0, :cond_2e

    .line 2
    sget-object v0, Lx7/e;->p:Lx7/e;

    sget-object v1, Lx7/g;->p:Lx7/g;

    sget-object v2, Lx7/h;->q:Lx7/h;

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v2, v2, v3}, Lx7/b;->a(Lx7/e;Lx7/g;Lx7/h;Lx7/h;Z)Lx7/b;

    move-result-object v0

    const-string v1, "Vungle"

    const-string v2, "6.10.2"

    .line 4
    invoke-static {v1, v2}, Lx7/i;->a(Ljava/lang/String;Ljava/lang/String;)Lx7/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, p1, v2, v2}, Lx7/c;->a(Lx7/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lx7/c;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lx7/a;->a(Lx7/b;Lx7/c;)Lx7/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->c:Lx7/a;

    .line 7
    invoke-virtual {v0, p1}, Lx7/a;->c(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/omsdk/OMTracker;->c:Lx7/a;

    invoke-virtual {p1}, Lx7/a;->d()V

    :cond_2e
    return-void
.end method

.method public start()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->a:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lv7/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->b:Z

    :cond_d
    return-void
.end method

.method public stop()J
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vungle/warren/omsdk/OMTracker;->c:Lx7/a;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lx7/a;->b()V

    .line 3
    sget-wide v0, Lcom/vungle/warren/omsdk/OMTracker;->d:J

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/vungle/warren/omsdk/OMTracker;->b:Z

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/vungle/warren/omsdk/OMTracker;->c:Lx7/a;

    return-wide v0
.end method

###### Class com.vungle.warren.omsdk.OMTracker.AnonymousClass1 (com.vungle.warren.omsdk.OMTracker$1)
.class synthetic Lcom/vungle/warren/omsdk/OMTracker$1;
.super Ljava/lang/Object;
.source "OMTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/omsdk/OMTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.vungle.warren.omsdk.OMTracker.Factory (com.vungle.warren.omsdk.OMTracker$Factory)
.class public Lcom/vungle/warren/omsdk/OMTracker$Factory;
.super Ljava/lang/Object;
.source "OMTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/omsdk/OMTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Z)Lcom/vungle/warren/omsdk/OMTracker;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/warren/omsdk/OMTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vungle/warren/omsdk/OMTracker;-><init>(ZLcom/vungle/warren/omsdk/OMTracker$1;)V

    return-object v0
.end method
