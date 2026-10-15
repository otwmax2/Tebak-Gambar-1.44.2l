###### Class f6.d (f6.d)
.class public final Lf6/d;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Le6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le6/b<",
        "Lf6/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ld6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ld6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lf6/d$b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lf6/a;->a:Lf6/a;

    sput-object v0, Lf6/d;->e:Ld6/d;

    .line 2
    sget-object v0, Lf6/c;->a:Lf6/c;

    sput-object v0, Lf6/d;->f:Ld6/f;

    .line 3
    sget-object v0, Lf6/b;->a:Lf6/b;

    sput-object v0, Lf6/d;->g:Ld6/f;

    .line 4
    new-instance v0, Lf6/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf6/d$b;-><init>(Lf6/d$a;)V

    sput-object v0, Lf6/d;->h:Lf6/d$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf6/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf6/d;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lf6/d;->e:Ld6/d;

    iput-object v0, p0, Lf6/d;->c:Ld6/d;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf6/d;->d:Z

    .line 6
    const-class v0, Ljava/lang/String;

    sget-object v1, Lf6/d;->f:Ld6/f;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/f;)Lf6/d;

    .line 7
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lf6/d;->g:Ld6/f;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/f;)Lf6/d;

    .line 8
    const-class v0, Ljava/util/Date;

    sget-object v1, Lf6/d;->h:Lf6/d$b;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/f;)Lf6/d;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ld6/e;)V
    .registers 2

    invoke-static {p0, p1}, Lf6/d;->l(Ljava/lang/Object;Ld6/e;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ld6/g;)V
    .registers 2

    invoke-static {p0, p1}, Lf6/d;->m(Ljava/lang/String;Ld6/g;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Boolean;Ld6/g;)V
    .registers 2

    invoke-static {p0, p1}, Lf6/d;->n(Ljava/lang/Boolean;Ld6/g;)V

    return-void
.end method

.method static synthetic e(Lf6/d;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lf6/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lf6/d;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lf6/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lf6/d;)Ld6/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lf6/d;->c:Ld6/d;

    return-object p0
.end method

.method static synthetic h(Lf6/d;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lf6/d;->d:Z

    return p0
.end method

.method private static synthetic l(Ljava/lang/Object;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ld6/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic m(Ljava/lang/String;Ld6/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ld6/g;->f(Ljava/lang/String;)Ld6/g;

    return-void
.end method

.method private static synthetic n(Ljava/lang/Boolean;Ld6/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Ld6/g;->g(Z)Ld6/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Ld6/d;)Le6/b;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lf6/d;->o(Ljava/lang/Class;Ld6/d;)Lf6/d;

    move-result-object p1

    return-object p1
.end method

.method public i()Ld6/a;
    .registers 2

    .line 1
    new-instance v0, Lf6/d$a;

    invoke-direct {v0, p0}, Lf6/d$a;-><init>(Lf6/d;)V

    return-object v0
.end method

.method public j(Le6/a;)Lf6/d;
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Le6/a;->a(Le6/b;)V

    return-object p0
.end method

.method public k(Z)Lf6/d;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lf6/d;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Ld6/d;)Lf6/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ld6/d<",
            "-TT;>;)",
            "Lf6/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf6/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lf6/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Ld6/f;)Lf6/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ld6/f<",
            "-TT;>;)",
            "Lf6/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf6/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lf6/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

###### Class f6.d.a (f6.d$a)
.class Lf6/d$a;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Ld6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf6/d;->i()Ld6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf6/d;


# direct methods
.method constructor <init>(Lf6/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf6/d$a;->a:Lf6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lf6/e;

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    .line 2
    invoke-static {v0}, Lf6/d;->e(Lf6/d;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->f(Lf6/d;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->g(Lf6/d;)Ld6/d;

    move-result-object v4

    iget-object v0, p0, Lf6/d$a;->a:Lf6/d;

    invoke-static {v0}, Lf6/d;->h(Lf6/d;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lf6/e;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ld6/d;Z)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {v6, p1, p2}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    .line 4
    invoke-virtual {v6}, Lf6/e;->u()V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lf6/d$a;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    .line 3
    :catch_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class f6.d.b (f6.d$b)
.class final Lf6/d$b;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Ld6/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/f<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lf6/d$b;->a:Ljava/text/DateFormat;

    const-string v1, "UTC"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf6/d$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lf6/d$b;-><init>()V

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
    check-cast p1, Ljava/util/Date;

    check-cast p2, Ld6/g;

    invoke-virtual {p0, p1, p2}, Lf6/d$b;->b(Ljava/util/Date;Ld6/g;)V

    return-void
.end method

.method public b(Ljava/util/Date;Ld6/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lf6/d$b;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ld6/g;->f(Ljava/lang/String;)Ld6/g;

    return-void
.end method

###### Class f6.a (f6.a)
.class public final synthetic Lf6/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ld6/d;


# static fields
.field public static final synthetic a:Lf6/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lf6/a;

    invoke-direct {v0}, Lf6/a;-><init>()V

    sput-object v0, Lf6/a;->a:Lf6/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ld6/e;

    invoke-static {p1, p2}, Lf6/d;->b(Ljava/lang/Object;Ld6/e;)V

    return-void
.end method

###### Class f6.b (f6.b)
.class public final synthetic Lf6/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ld6/f;


# static fields
.field public static final synthetic a:Lf6/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lf6/b;

    invoke-direct {v0}, Lf6/b;-><init>()V

    sput-object v0, Lf6/b;->a:Lf6/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ld6/g;

    invoke-static {p1, p2}, Lf6/d;->d(Ljava/lang/Boolean;Ld6/g;)V

    return-void
.end method

###### Class f6.c (f6.c)
.class public final synthetic Lf6/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ld6/f;


# static fields
.field public static final synthetic a:Lf6/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lf6/c;

    invoke-direct {v0}, Lf6/c;-><init>()V

    sput-object v0, Lf6/c;->a:Lf6/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ld6/g;

    invoke-static {p1, p2}, Lf6/d;->c(Ljava/lang/String;Ld6/g;)V

    return-void
.end method
