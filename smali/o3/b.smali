###### Class o3.b (o3.b)
.class public final Lo3/b;
.super Ljava/lang/Object;
.source "GlobalMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b$a;
    }
.end annotation


# static fields
.field private static final b:Lo3/b;


# instance fields
.field private final a:Lo3/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo3/b$a;

    invoke-direct {v0}, Lo3/b$a;-><init>()V

    invoke-virtual {v0}, Lo3/b$a;->a()Lo3/b;

    move-result-object v0

    sput-object v0, Lo3/b;->b:Lo3/b;

    return-void
.end method

.method constructor <init>(Lo3/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/b;->a:Lo3/e;

    return-void
.end method

.method public static b()Lo3/b$a;
    .registers 1

    .line 1
    new-instance v0, Lo3/b$a;

    invoke-direct {v0}, Lo3/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lo3/e;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/b;->a:Lo3/e;

    return-object v0
.end method

###### Class o3.b.a (o3.b$a)
.class public final Lo3/b$a;
.super Ljava/lang/Object;
.source "GlobalMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lo3/e;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo3/b$a;->a:Lo3/e;

    return-void
.end method


# virtual methods
.method public a()Lo3/b;
    .registers 3

    .line 1
    new-instance v0, Lo3/b;

    iget-object v1, p0, Lo3/b$a;->a:Lo3/e;

    invoke-direct {v0, v1}, Lo3/b;-><init>(Lo3/e;)V

    return-object v0
.end method

.method public b(Lo3/e;)Lo3/b$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/b$a;->a:Lo3/e;

    return-object p0
.end method
