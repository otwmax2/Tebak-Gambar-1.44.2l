###### Class r5.e (r5.e)
.class public Lr5/e;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/e$b;
    }
.end annotation


# static fields
.field private static final c:Lr5/e$b;


# instance fields
.field private final a:Lv5/f;

.field private b:Lr5/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lr5/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/e$b;-><init>(Lr5/e$a;)V

    sput-object v0, Lr5/e;->c:Lr5/e$b;

    return-void
.end method

.method public constructor <init>(Lv5/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr5/e;->a:Lv5/f;

    .line 3
    sget-object p1, Lr5/e;->c:Lr5/e$b;

    iput-object p1, p0, Lr5/e;->b:Lr5/c;

    return-void
.end method

.method public constructor <init>(Lv5/f;Ljava/lang/String;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lr5/e;-><init>(Lv5/f;)V

    .line 5
    invoke-virtual {p0, p2}, Lr5/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Lr5/e;->a:Lv5/f;

    const-string v1, "userlog"

    invoke-virtual {v0, p1, v1}, Lv5/f;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lr5/e;->b:Lr5/c;

    invoke-interface {v0}, Lr5/c;->d()V

    return-void
.end method

.method public b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lr5/e;->b:Lr5/c;

    invoke-interface {v0}, Lr5/c;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lr5/e;->b:Lr5/c;

    invoke-interface {v0}, Lr5/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lr5/e;->b:Lr5/c;

    invoke-interface {v0}, Lr5/c;->a()V

    .line 2
    sget-object v0, Lr5/e;->c:Lr5/e$b;

    iput-object v0, p0, Lr5/e;->b:Lr5/c;

    if-nez p1, :cond_c

    return-void

    .line 3
    :cond_c
    invoke-direct {p0, p1}, Lr5/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lr5/e;->f(Ljava/io/File;I)V

    return-void
.end method

.method f(Ljava/io/File;I)V
    .registers 4

    .line 1
    new-instance v0, Lr5/h;

    invoke-direct {v0, p1, p2}, Lr5/h;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lr5/e;->b:Lr5/c;

    return-void
.end method

.method public g(JLjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lr5/e;->b:Lr5/c;

    invoke-interface {v0, p1, p2, p3}, Lr5/c;->e(JLjava/lang/String;)V

    return-void
.end method

###### Class r5.e.a (r5.e$a)
.class synthetic Lr5/e$a;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class r5.e.b (r5.e$b)
.class final Lr5/e$b;
.super Ljava/lang/Object;
.source "LogFileManager.java"

# interfaces
.implements Lr5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lr5/e$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lr5/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e(JLjava/lang/String;)V
    .registers 4

    return-void
.end method
