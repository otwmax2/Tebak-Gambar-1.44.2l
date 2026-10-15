###### Class com.twitter.sdk.android.core.internal.oauth.a (com.twitter.sdk.android.core.internal.oauth.a)
.class public Lcom/twitter/sdk/android/core/internal/oauth/a;
.super Lcom/twitter/sdk/android/core/internal/oauth/e;
.source "GuestAuthToken.java"


# instance fields
.field private final r:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "guest_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/oauth/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/a;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 2
    :cond_12
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 3
    :cond_19
    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    .line 4
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/a;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/a;->r:Ljava/lang/String;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2a

    :cond_28
    if-eqz p1, :cond_2b

    :goto_2a
    return v1

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/twitter/sdk/android/core/internal/oauth/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/a;->r:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/a;->o:J

    const-wide/32 v4, 0xa4cb80

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
