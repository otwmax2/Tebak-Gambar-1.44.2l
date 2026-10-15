###### Class u6.j (u6.j)
.class public Lu6/j;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/j$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method private constructor <init>(Lu6/j$b;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lu6/j$b;->a(Lu6/j$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lu6/j;->a:J

    .line 4
    invoke-static {p1}, Lu6/j$b;->b(Lu6/j$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lu6/j;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lu6/j$b;Lu6/j$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lu6/j;-><init>(Lu6/j$b;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lu6/j;->a:J

    return-wide v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lu6/j;->b:J

    return-wide v0
.end method

###### Class u6.j.a (u6.j$a)
.class synthetic Lu6/j$a;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class u6.j.b (u6.j$b)
.class public Lu6/j$b;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    .line 2
    iput-wide v0, p0, Lu6/j$b;->a:J

    .line 3
    sget-wide v0, Lcom/google/firebase/remoteconfig/internal/k;->j:J

    iput-wide v0, p0, Lu6/j$b;->b:J

    return-void
.end method

.method static synthetic a(Lu6/j$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lu6/j$b;->a:J

    return-wide v0
.end method

.method static synthetic b(Lu6/j$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lu6/j$b;->b:J

    return-wide v0
.end method


# virtual methods
.method public c()Lu6/j;
    .registers 3

    .line 1
    new-instance v0, Lu6/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu6/j;-><init>(Lu6/j$b;Lu6/j$a;)V

    return-object v0
.end method

.method public d(J)Lu6/j$b;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 1
    iput-wide p1, p0, Lu6/j$b;->b:J

    return-object p0

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum interval between fetches has to be a non-negative number. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid argument"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
