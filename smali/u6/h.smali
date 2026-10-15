###### Class u6.h (u6.h)
.class public Lu6/h;
.super Lu6/g;
.source "FirebaseRemoteConfigFetchThrottledException.java"


# instance fields
.field private final o:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    const-string v0, "Fetch was throttled."

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lu6/h;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Lu6/g;-><init>(Ljava/lang/String;)V

    .line 3
    iput-wide p2, p0, Lu6/h;->o:J

    return-void
.end method
