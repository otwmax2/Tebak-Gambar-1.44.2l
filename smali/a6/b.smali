###### Class a6.b (a6.b)
.class public La6/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final a:Lb6/a;


# direct methods
.method public constructor <init>(Lb6/a;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, La6/b;->a:Lb6/a;

    return-void

    .line 3
    :cond_9
    invoke-virtual {p1}, Lb6/a;->V3()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 5
    invoke-virtual {p1, v0, v1}, Lb6/a;->W3(J)V

    .line 6
    :cond_1e
    iput-object p1, p0, La6/b;->a:Lb6/a;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 3

    .line 1
    iget-object v0, p0, La6/b;->a:Lb6/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {v0}, Lb6/a;->X3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v1
.end method
