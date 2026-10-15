###### Class o3.e (o3.e)
.class public final Lo3/e;
.super Ljava/lang/Object;
.source "StorageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/e$a;
    }
.end annotation


# static fields
.field private static final c:Lo3/e;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo3/e$a;

    invoke-direct {v0}, Lo3/e$a;-><init>()V

    invoke-virtual {v0}, Lo3/e$a;->a()Lo3/e;

    move-result-object v0

    sput-object v0, Lo3/e;->c:Lo3/e;

    return-void
.end method

.method constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lo3/e;->a:J

    .line 3
    iput-wide p3, p0, Lo3/e;->b:J

    return-void
.end method

.method public static c()Lo3/e$a;
    .registers 1

    .line 1
    new-instance v0, Lo3/e$a;

    invoke-direct {v0}, Lo3/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3
    .annotation build Lg6/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-wide v0, p0, Lo3/e;->a:J

    return-wide v0
.end method

.method public b()J
    .registers 3
    .annotation build Lg6/d;
        tag = 0x2
    .end annotation

    .line 1
    iget-wide v0, p0, Lo3/e;->b:J

    return-wide v0
.end method

###### Class o3.e.a (o3.e$a)
.class public final Lo3/e$a;
.super Ljava/lang/Object;
.source "StorageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lo3/e$a;->a:J

    .line 3
    iput-wide v0, p0, Lo3/e$a;->b:J

    return-void
.end method


# virtual methods
.method public a()Lo3/e;
    .registers 6

    .line 1
    new-instance v0, Lo3/e;

    iget-wide v1, p0, Lo3/e$a;->a:J

    iget-wide v3, p0, Lo3/e$a;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lo3/e;-><init>(JJ)V

    return-object v0
.end method

.method public b(J)Lo3/e$a;
    .registers 3

    .line 1
    iput-wide p1, p0, Lo3/e$a;->a:J

    return-object p0
.end method

.method public c(J)Lo3/e$a;
    .registers 3

    .line 1
    iput-wide p1, p0, Lo3/e$a;->b:J

    return-object p0
.end method
