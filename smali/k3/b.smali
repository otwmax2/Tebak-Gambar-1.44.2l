###### Class k3.b (k3.b)
.class public final Lk3/b;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Le6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/b$f;,
        Lk3/b$d;,
        Lk3/b$a;,
        Lk3/b$c;,
        Lk3/b$e;,
        Lk3/b$b;
    }
.end annotation


# static fields
.field public static final a:Le6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b;

    invoke-direct {v0}, Lk3/b;-><init>()V

    sput-object v0, Lk3/b;->a:Le6/a;

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
    const-class v0, Lk3/j;

    sget-object v1, Lk3/b$b;->a:Lk3/b$b;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 2
    const-class v0, Lk3/d;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 3
    const-class v0, Lk3/m;

    sget-object v1, Lk3/b$e;->a:Lk3/b$e;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 4
    const-class v0, Lk3/g;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 5
    const-class v0, Lk3/k;

    sget-object v1, Lk3/b$c;->a:Lk3/b$c;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 6
    const-class v0, Lk3/e;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 7
    const-class v0, Lk3/a;

    sget-object v1, Lk3/b$a;->a:Lk3/b$a;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 8
    const-class v0, Lk3/c;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 9
    const-class v0, Lk3/l;

    sget-object v1, Lk3/b$d;->a:Lk3/b$d;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 10
    const-class v0, Lk3/f;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 11
    const-class v0, Lk3/o;

    sget-object v1, Lk3/b$f;->a:Lk3/b$f;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    .line 12
    const-class v0, Lk3/i;

    invoke-interface {p1, v0, v1}, Le6/b;->a(Ljava/lang/Class;Ld6/d;)Le6/b;

    return-void
.end method

###### Class k3.b.a (k3.b$a)
.class final Lk3/b$a;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$a;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;

.field private static final h:Ld6/c;

.field private static final i:Ld6/c;

.field private static final j:Ld6/c;

.field private static final k:Ld6/c;

.field private static final l:Ld6/c;

.field private static final m:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$a;

    invoke-direct {v0}, Lk3/b$a;-><init>()V

    sput-object v0, Lk3/b$a;->a:Lk3/b$a;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->b:Ld6/c;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->c:Ld6/c;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->d:Ld6/c;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->e:Ld6/c;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->f:Ld6/c;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->g:Ld6/c;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->h:Ld6/c;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->i:Ld6/c;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->j:Ld6/c;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->k:Ld6/c;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->l:Ld6/c;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$a;->m:Ld6/c;

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
    check-cast p1, Lk3/a;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$a;->b(Lk3/a;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/a;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$a;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lk3/b$a;->c:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lk3/b$a;->d:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Lk3/b$a;->e:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lk3/b$a;->f:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lk3/b$a;->g:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 7
    sget-object v0, Lk3/b$a;->h:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 8
    sget-object v0, Lk3/b$a;->i:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 9
    sget-object v0, Lk3/b$a;->j:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 10
    sget-object v0, Lk3/b$a;->k:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 11
    sget-object v0, Lk3/b$a;->l:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 12
    sget-object v0, Lk3/b$a;->m:Ld6/c;

    invoke-virtual {p1}, Lk3/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class k3.b.C0187b (k3.b$b)
.class final Lk3/b$b;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/j;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$b;

.field private static final b:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$b;

    invoke-direct {v0}, Lk3/b$b;-><init>()V

    sput-object v0, Lk3/b$b;->a:Lk3/b$b;

    const-string v0, "logRequest"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$b;->b:Ld6/c;

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
    check-cast p1, Lk3/j;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$b;->b(Lk3/j;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/j;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$b;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/j;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class k3.b.c (k3.b$c)
.class final Lk3/b$c;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/k;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$c;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$c;

    invoke-direct {v0}, Lk3/b$c;-><init>()V

    sput-object v0, Lk3/b$c;->a:Lk3/b$c;

    const-string v0, "clientType"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$c;->b:Ld6/c;

    const-string v0, "androidClientInfo"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$c;->c:Ld6/c;

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
    check-cast p1, Lk3/k;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$c;->b(Lk3/k;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/k;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$c;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/k;->c()Lk3/k$b;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lk3/b$c;->c:Ld6/c;

    invoke-virtual {p1}, Lk3/k;->b()Lk3/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class k3.b.d (k3.b$d)
.class final Lk3/b$d;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/l;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$d;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;

.field private static final h:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$d;

    invoke-direct {v0}, Lk3/b$d;-><init>()V

    sput-object v0, Lk3/b$d;->a:Lk3/b$d;

    const-string v0, "eventTimeMs"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->b:Ld6/c;

    const-string v0, "eventCode"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->c:Ld6/c;

    const-string v0, "eventUptimeMs"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->d:Ld6/c;

    const-string v0, "sourceExtension"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->e:Ld6/c;

    const-string v0, "sourceExtensionJsonProto3"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->f:Ld6/c;

    const-string v0, "timezoneOffsetSeconds"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->g:Ld6/c;

    const-string v0, "networkConnectionInfo"

    .line 8
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$d;->h:Ld6/c;

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
    check-cast p1, Lk3/l;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$d;->b(Lk3/l;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/l;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$d;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 2
    sget-object v0, Lk3/b$d;->c:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 3
    sget-object v0, Lk3/b$d;->d:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 4
    sget-object v0, Lk3/b$d;->e:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lk3/b$d;->f:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lk3/b$d;->g:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 7
    sget-object v0, Lk3/b$d;->h:Ld6/c;

    invoke-virtual {p1}, Lk3/l;->e()Lk3/o;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class k3.b.e (k3.b$e)
.class final Lk3/b$e;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/m;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$e;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;

.field private static final d:Ld6/c;

.field private static final e:Ld6/c;

.field private static final f:Ld6/c;

.field private static final g:Ld6/c;

.field private static final h:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$e;

    invoke-direct {v0}, Lk3/b$e;-><init>()V

    sput-object v0, Lk3/b$e;->a:Lk3/b$e;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->b:Ld6/c;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->c:Ld6/c;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->d:Ld6/c;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->e:Ld6/c;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->f:Ld6/c;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->g:Ld6/c;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$e;->h:Ld6/c;

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
    check-cast p1, Lk3/m;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$e;->b(Lk3/m;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/m;Ld6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$e;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 2
    sget-object v0, Lk3/b$e;->c:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ld6/e;->c(Ld6/c;J)Ld6/e;

    .line 3
    sget-object v0, Lk3/b$e;->d:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->b()Lk3/k;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 4
    sget-object v0, Lk3/b$e;->e:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 5
    sget-object v0, Lk3/b$e;->f:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 6
    sget-object v0, Lk3/b$e;->g:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 7
    sget-object v0, Lk3/b$e;->h:Ld6/c;

    invoke-virtual {p1}, Lk3/m;->f()Lk3/p;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

###### Class k3.b.f (k3.b$f)
.class final Lk3/b$f;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Ld6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/d<",
        "Lk3/o;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk3/b$f;

.field private static final b:Ld6/c;

.field private static final c:Ld6/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lk3/b$f;

    invoke-direct {v0}, Lk3/b$f;-><init>()V

    sput-object v0, Lk3/b$f;->a:Lk3/b$f;

    const-string v0, "networkType"

    .line 2
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$f;->b:Ld6/c;

    const-string v0, "mobileSubtype"

    .line 3
    invoke-static {v0}, Ld6/c;->d(Ljava/lang/String;)Ld6/c;

    move-result-object v0

    sput-object v0, Lk3/b$f;->c:Ld6/c;

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
    check-cast p1, Lk3/o;

    check-cast p2, Ld6/e;

    invoke-virtual {p0, p1, p2}, Lk3/b$f;->b(Lk3/o;Ld6/e;)V

    return-void
.end method

.method public b(Lk3/o;Ld6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lk3/b$f;->b:Ld6/c;

    invoke-virtual {p1}, Lk3/o;->c()Lk3/o$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lk3/b$f;->c:Ld6/c;

    invoke-virtual {p1}, Lk3/o;->b()Lk3/o$b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method
