###### Class x6.c (x6.c)
.class public final Lx6/c;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Le6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/c$d;,
        Lx6/c$a;,
        Lx6/c$b;,
        Lx6/c$c;,
        Lx6/c$f;,
        Lx6/c$e;
    }
.end annotation


# static fields
.field public static final a:Le6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c;

    invoke-direct {v0}, Lx6/c;-><init>()V

    sput-object v0, Lx6/c;->a:Le6/a;

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
    const-class v0, Lx6/a0;

    sget-object v1, Lx6/c$e;->a:Lx6/c$e;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 2
    const-class v0, Lx6/f0;

    sget-object v1, Lx6/c$f;->a:Lx6/c$f;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 3
    const-class v0, Lx6/f;

    sget-object v1, Lx6/c$c;->a:Lx6/c$c;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 4
    const-class v0, Lx6/b;

    sget-object v1, Lx6/c$b;->a:Lx6/c$b;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 5
    const-class v0, Lx6/a;

    sget-object v1, Lx6/c$a;->a:Lx6/c$a;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 6
    const-class v0, Lx6/u;

    sget-object v1, Lx6/c$d;->a:Lx6/c$d;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    return-void
.end method

###### Class x6.c.a (x6.c$a)
.class final Lx6/c$a;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$a;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$a;

    invoke-direct {v0}, Lx6/c$a;-><init>()V

    sput-object v0, Lx6/c$a;->a:Lx6/c$a;

    const-string v0, "packageName"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->b:Ld6/c;

    const-string v0, "versionName"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->c:Ld6/c;

    const-string v0, "appBuildVersion"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->d:Ld6/c;

    const-string v0, "deviceManufacturer"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->e:Ld6/c;

    const-string v0, "currentProcessDetails"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->f:Ld6/c;

    const-string v0, "appProcessDetails"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$a;->g:Ld6/c;

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
    check-cast p1, Lx6/a;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$a;->b(Lx6/a;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/a;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$a;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$a;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$a;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Lx6/c$a;->e:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lx6/c$a;->f:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->c()Lx6/u;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lx6/c$a;->g:Ld6/c;

    invoke-virtual {p1}, Lx6/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class x6.c.b (x6.c$b)
.class final Lx6/c$b;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$b;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$b;

    invoke-direct {v0}, Lx6/c$b;-><init>()V

    sput-object v0, Lx6/c$b;->a:Lx6/c$b;

    const-string v0, "appId"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->b:Ld6/c;

    const-string v0, "deviceModel"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->c:Ld6/c;

    const-string v0, "sessionSdkVersion"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->d:Ld6/c;

    const-string v0, "osVersion"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->e:Ld6/c;

    const-string v0, "logEnvironment"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->f:Ld6/c;

    const-string v0, "androidAppInfo"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$b;->g:Ld6/c;

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
    check-cast p1, Lx6/b;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$b;->b(Lx6/b;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/b;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$b;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$b;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$b;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Lx6/c$b;->e:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lx6/c$b;->f:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->d()Lx6/t;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lx6/c$b;->g:Ld6/c;

    invoke-virtual {p1}, Lx6/b;->a()Lx6/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class x6.c.C0296c (x6.c$c)
.class final Lx6/c$c;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/f;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$c;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$c;

    invoke-direct {v0}, Lx6/c$c;-><init>()V

    sput-object v0, Lx6/c$c;->a:Lx6/c$c;

    const-string v0, "performance"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$c;->b:Ld6/c;

    const-string v0, "crashlytics"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$c;->c:Ld6/c;

    const-string v0, "sessionSamplingRate"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$c;->d:Ld6/c;

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
    check-cast p1, Lx6/f;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$c;->b(Lx6/f;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/f;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$c;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/f;->b()Lx6/d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$c;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/f;->a()Lx6/d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$c;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/f;->c()D

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->b(Ld6/c;D)Ld6/e;

    return-void
.end method

###### Class x6.c.d (x6.c$d)
.class final Lx6/c$d;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/u;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$d;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$d;

    invoke-direct {v0}, Lx6/c$d;-><init>()V

    sput-object v0, Lx6/c$d;->a:Lx6/c$d;

    const-string v0, "processName"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$d;->b:Ld6/c;

    const-string v0, "pid"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$d;->c:Ld6/c;

    const-string v0, "importance"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$d;->d:Ld6/c;

    const-string v0, "defaultProcess"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$d;->e:Ld6/c;

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
    check-cast p1, Lx6/u;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$d;->b(Lx6/u;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/u;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$d;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$d;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/u;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/e;->d(Ld6/c;I)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$d;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/u;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/e;->d(Ld6/c;I)Ld6/e;

    .line 4
    sget-object v0, Lx6/c$d;->e:Ld6/c;

    invoke-virtual {p1}, Lx6/u;->d()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Ld6/e;->a(Ld6/c;Z)Ld6/e;

    return-void
.end method

###### Class x6.c.e (x6.c$e)
.class final Lx6/c$e;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/a0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$e;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$e;

    invoke-direct {v0}, Lx6/c$e;-><init>()V

    sput-object v0, Lx6/c$e;->a:Lx6/c$e;

    const-string v0, "eventType"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$e;->b:Ld6/c;

    const-string v0, "sessionData"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$e;->c:Ld6/c;

    const-string v0, "applicationInfo"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$e;->d:Ld6/c;

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
    check-cast p1, Lx6/a0;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$e;->b(Lx6/a0;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/a0;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$e;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/a0;->b()Lx6/j;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$e;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/a0;->c()Lx6/f0;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$e;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/a0;->a()Lx6/b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class x6.c.f (x6.c$f)
.class final Lx6/c$f;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lx6/f0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lx6/c$f;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lx6/c$f;

    invoke-direct {v0}, Lx6/c$f;-><init>()V

    sput-object v0, Lx6/c$f;->a:Lx6/c$f;

    const-string v0, "sessionId"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->b:Ld6/c;

    const-string v0, "firstSessionId"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->c:Ld6/c;

    const-string v0, "sessionIndex"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->d:Ld6/c;

    const-string v0, "eventTimestampUs"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->e:Ld6/c;

    const-string v0, "dataCollectionStatus"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->f:Ld6/c;

    const-string v0, "firebaseInstallationId"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lx6/c$f;->g:Ld6/c;

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
    check-cast p1, Lx6/f0;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lx6/c$f;->b(Lx6/f0;Ld6/e;)V

    return-void
.end method

.method public b(Lx6/f0;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c$f;->b:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lx6/c$f;->c:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lx6/c$f;->d:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->f()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ld6/e;->d(Ld6/c;I)Ld6/e;

    .line 4
    sget-object v0, Lx6/c$f;->e:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 5
    sget-object v0, Lx6/c$f;->f:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->a()Lx6/f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lx6/c$f;->g:Ld6/c;

    invoke-virtual {p1}, Lx6/f0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method
