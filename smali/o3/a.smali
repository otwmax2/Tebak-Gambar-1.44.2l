###### Class o3.a (o3.a)
.class public final Lo3/a;
.super Ljava/lang/Object;
.source "ClientMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/a$a;
    }
.end annotation


# static fields
.field private static final e:Lo3/a;


# instance fields
.field private final a:Lo3/f;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo3/b;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo3/a$a;

    invoke-direct {v0}, Lo3/a$a;-><init>()V

    invoke-virtual {v0}, Lo3/a$a;->b()Lo3/a;

    move-result-object v0

    sput-object v0, Lo3/a;->e:Lo3/a;

    return-void
.end method

.method constructor <init>(Lo3/f;Ljava/util/List;Lo3/b;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/f;",
            "Ljava/util/List<",
            "Lo3/d;",
            ">;",
            "Lo3/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/a;->a:Lo3/f;

    .line 3
    iput-object p2, p0, Lo3/a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lo3/a;->c:Lo3/b;

    .line 5
    iput-object p4, p0, Lo3/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Lo3/a$a;
    .registers 1

    .line 1
    new-instance v0, Lo3/a$a;

    invoke-direct {v0}, Lo3/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lo3/b;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a;->c:Lo3/b;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo3/d;",
            ">;"
        }
    .end annotation

    .annotation build Lg6/d;
        tag = 0x2
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Lo3/f;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/a;->a:Lo3/f;

    return-object v0
.end method

.method public f()[B
    .registers 2

    .line 1
    invoke-static {p0}, Ll3/m;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

###### Class o3.a.C0210a (o3.a$a)
.class public final Lo3/a$a;
.super Ljava/lang/Object;
.source "ClientMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lo3/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo3/b;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo3/a$a;->a:Lo3/f;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo3/a$a;->b:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lo3/a$a;->c:Lo3/b;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lo3/a$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lo3/d;)Lo3/a$a;
    .registers 3

    .line 1
    iget-object v0, p0, Lo3/a$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lo3/a;
    .registers 6

    .line 1
    new-instance v0, Lo3/a;

    iget-object v1, p0, Lo3/a$a;->a:Lo3/f;

    iget-object v2, p0, Lo3/a$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo3/a$a;->c:Lo3/b;

    iget-object v4, p0, Lo3/a$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lo3/a;-><init>(Lo3/f;Ljava/util/List;Lo3/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lo3/a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lo3/b;)Lo3/a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/a$a;->c:Lo3/b;

    return-object p0
.end method

.method public e(Lo3/f;)Lo3/a$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/a$a;->a:Lo3/f;

    return-object p0
.end method
