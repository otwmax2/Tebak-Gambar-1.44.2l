###### Class com.vungle.warren.SessionData (com.vungle.warren.SessionData)
.class public Lcom/vungle/warren/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitTimeStamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/SessionData;->a:J

    return-wide v0
.end method

.method public getTimeout()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/SessionData;->b:J

    return-wide v0
.end method

.method public setInitTimeStamp(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/SessionData;->a:J

    return-void
.end method

.method public setTimeout(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/SessionData;->b:J

    return-void
.end method
