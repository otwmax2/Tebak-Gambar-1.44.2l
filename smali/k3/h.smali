###### Class k3.h (k3.h)
.class final Lk3/h;
.super Lk3/n;
.source "AutoValue_LogResponse.java"


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lk3/n;-><init>()V

    .line 2
    iput-wide p1, p0, Lk3/h;->a:J

    return-void
.end method


# virtual methods
.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lk3/h;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lk3/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 2
    check-cast p1, Lk3/n;

    .line 3
    iget-wide v3, p0, Lk3/h;->a:J

    invoke-virtual {p1}, Lk3/n;->c()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    :cond_18
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lk3/h;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogResponse{nextRequestWaitMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk3/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
