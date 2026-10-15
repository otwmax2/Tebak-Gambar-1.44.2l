###### Class com.vungle.warren.utility.ConcurrencyTimeoutProvider (com.vungle.warren.utility.ConcurrencyTimeoutProvider)
.class public Lcom/vungle/warren/utility/ConcurrencyTimeoutProvider;
.super Ljava/lang/Object;
.source "ConcurrencyTimeoutProvider.java"

# interfaces
.implements Lcom/vungle/warren/utility/TimeoutProvider;


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/warren/utility/ConcurrencyTimeoutProvider;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeout()J
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/utility/ThreadUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-wide v0, Lcom/vungle/warren/utility/ConcurrencyTimeoutProvider;->a:J

    goto :goto_e

    :cond_9
    const-wide v0, 0x7fffffffffffffffL

    :goto_e
    return-wide v0
.end method
