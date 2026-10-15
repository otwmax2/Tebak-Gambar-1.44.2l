###### Class l3.a (l3.a)
.class public final Ll3/a;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Le6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/a$f;,
        Ll3/a$b;,
        Ll3/a$c;,
        Ll3/a$d;,
        Ll3/a$g;,
        Ll3/a$a;,
        Ll3/a$e;
    }
.end annotation


# static fields
.field public static final a:Le6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll3/a;

    invoke-direct {v0}, Ll3/a;-><init>()V

    sput-object v0, Ll3/a;->a:Le6/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le6/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le6/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ll3/m;

    sget-object v1, Ll3/a$e;->a:Ll3/a$e;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 2
    const-class v0, Lo3/a;

    sget-object v1, Ll3/a$a;->a:Ll3/a$a;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 3
    const-class v0, Lo3/f;

    sget-object v1, Ll3/a$g;->a:Ll3/a$g;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 4
    const-class v0, Lo3/d;

    sget-object v1, Ll3/a$d;->a:Ll3/a$d;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 5
    const-class v0, Lo3/c;

    sget-object v1, Ll3/a$c;->a:Ll3/a$c;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 6
    const-class v0, Lo3/b;

    sget-object v1, Ll3/a$b;->a:Ll3/a$b;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 7
    const-class v0, Lo3/e;

    sget-object v1, Ll3/a$f;->a:Ll3/a$f;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    return-void
.end method

###### Class l3.a.C0198a (l3.a$a)
.class final Ll3/a$a;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$a;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$a;

    invoke-direct {v0}, Ll3/a$a;-><init>()V

    sput-object v0, Ll3/a$a;->a:Ll3/a$a;

    const-string v0, "window"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$a;->b:Ld6/c;

    const-string v0, "logSourceMetrics"

    .line 8
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$a;->c:Ld6/c;

    const-string v0, "globalMetrics"

    .line 14
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 15
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$a;->d:Ld6/c;

    const-string v0, "appNamespace"

    .line 20
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 21
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x4

    .line 22
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$a;->e:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/a;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$a;->b(Lo3/a;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/a;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$a;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/a;->d()Lo3/f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Ll3/a$a;->c:Ld6/c;

    invoke-virtual {p1}, Lo3/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Ll3/a$a;->d:Ld6/c;

    invoke-virtual {p1}, Lo3/a;->b()Lo3/b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Ll3/a$a;->e:Ld6/c;

    invoke-virtual {p1}, Lo3/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class l3.a.b (l3.a$b)
.class final Ll3/a$b;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$b;

.field private static final b:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$b;

    invoke-direct {v0}, Ll3/a$b;-><init>()V

    sput-object v0, Ll3/a$b;->a:Ll3/a$b;

    const-string v0, "storageMetrics"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$b;->b:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/b;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$b;->b(Lo3/b;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/b;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$b;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/b;->a()Lo3/e;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class l3.a.c (l3.a$c)
.class final Ll3/a$c;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$c;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$c;

    invoke-direct {v0}, Ll3/a$c;-><init>()V

    sput-object v0, Ll3/a$c;->a:Ll3/a$c;

    const-string v0, "eventsDroppedCount"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$c;->b:Ld6/c;

    const-string v0, "reason"

    .line 8
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x3

    .line 10
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$c;->c:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/c;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$c;->b(Lo3/c;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/c;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$c;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/c;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 2
    sget-object v0, Ll3/a$c;->c:Ld6/c;

    invoke-virtual {p1}, Lo3/c;->b()Lo3/c$b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class l3.a.d (l3.a$d)
.class final Ll3/a$d;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$d;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$d;

    invoke-direct {v0}, Ll3/a$d;-><init>()V

    sput-object v0, Ll3/a$d;->a:Ll3/a$d;

    const-string v0, "logSource"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$d;->b:Ld6/c;

    const-string v0, "logEventDropped"

    .line 8
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$d;->c:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/d;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$d;->b(Lo3/d;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/d;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$d;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Ll3/a$d;->c:Ld6/c;

    invoke-virtual {p1}, Lo3/d;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class l3.a.e (l3.a$e)
.class final Ll3/a$e;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Ll3/m;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$e;

.field private static final b:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll3/a$e;

    invoke-direct {v0}, Ll3/a$e;-><init>()V

    sput-object v0, Ll3/a$e;->a:Ll3/a$e;

    const-string v0, "clientMetrics"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$e;->b:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ll3/m;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$e;->b(Ll3/m;Ld6/e;)V

    return-void
.end method

.method public b(Ll3/m;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$e;->b:Ld6/c;

    invoke-virtual {p1}, Ll3/m;->b()Lo3/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class l3.a.f (l3.a$f)
.class final Ll3/a$f;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/e;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$f;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$f;

    invoke-direct {v0}, Ll3/a$f;-><init>()V

    sput-object v0, Ll3/a$f;->a:Ll3/a$f;

    const-string v0, "currentCacheSizeBytes"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$f;->b:Ld6/c;

    const-string v0, "maxCacheSizeBytes"

    .line 8
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$f;->c:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/e;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$f;->b(Lo3/e;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/e;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$f;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/e;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 2
    sget-object v0, Ll3/a$f;->c:Ld6/c;

    invoke-virtual {p1}, Lo3/e;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    return-void
.end method

###### Class l3.a.g (l3.a$g)
.class final Ll3/a$g;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lo3/f;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ll3/a$g;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll3/a$g;

    invoke-direct {v0}, Ll3/a$g;-><init>()V

    sput-object v0, Ll3/a$g;->a:Ll3/a$g;

    const-string v0, "startMs"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 3
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$g;->b:Ld6/c;

    const-string v0, "endMs"

    .line 8
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Ll3/a$g;->c:Ld6/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo3/f;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Ll3/a$g;->b(Lo3/f;Ld6/e;)V

    return-void
.end method

.method public b(Lo3/f;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ll3/a$g;->b:Ld6/c;

    invoke-virtual {p1}, Lo3/f;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 2
    sget-object v0, Ll3/a$g;->c:Ld6/c;

    invoke-virtual {p1}, Lo3/f;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    return-void
.end method
