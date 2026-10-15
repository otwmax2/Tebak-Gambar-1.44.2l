###### Class com.android.volley.Cache (com.android.volley.Cache)
.class public interface abstract Lcom/android/volley/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/Cache$Entry;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
.end method

.method public abstract b()V
.end method

.method public abstract c(Ljava/lang/String;Z)V
.end method

.method public abstract clear()V
.end method

.method public abstract d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
.end method

###### Class com.android.volley.Cache.Entry (com.android.volley.Cache$Entry)
.class public Lcom/android/volley/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/volley/Cache$Entry;->b(J)Z

    move-result v0

    return v0
.end method

.method b(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->e:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method c(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/android/volley/Cache$Entry;->f:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
