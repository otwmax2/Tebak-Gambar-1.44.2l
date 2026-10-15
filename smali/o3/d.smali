###### Class o3.d (o3.d)
.class public final Lo3/d;
.super Ljava/lang/Object;
.source "LogSourceMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/d$a;
    }
.end annotation


# static fields
.field private static final c:Lo3/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo3/d$a;

    invoke-direct {v0}, Lo3/d$a;-><init>()V

    invoke-virtual {v0}, Lo3/d$a;->a()Lo3/d;

    move-result-object v0

    sput-object v0, Lo3/d;->c:Lo3/d;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo3/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo3/d;->b:Ljava/util/List;

    return-void
.end method

.method public static c()Lo3/d$a;
    .registers 1

    .line 1
    new-instance v0, Lo3/d$a;

    invoke-direct {v0}, Lo3/d$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo3/c;",
            ">;"
        }
    .end annotation

    .annotation build Lg6/d;
        tag = 0x2
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/d;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class o3.d.a (o3.d$a)
.class public final Lo3/d$a;
.super Ljava/lang/Object;
.source "LogSourceMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo3/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo3/d$a;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo3/d$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lo3/d;
    .registers 4

    .line 1
    new-instance v0, Lo3/d;

    iget-object v1, p0, Lo3/d$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lo3/d$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo3/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)Lo3/d$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo3/c;",
            ">;)",
            "Lo3/d$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo3/d$a;->b:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo3/d$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/d$a;->a:Ljava/lang/String;

    return-object p0
.end method
