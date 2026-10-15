###### Class g6.h (g6.h)
.class public Lg6/h;
.super Ljava/lang/Object;
.source "ProtobufEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6/h$a;
    }
.end annotation


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

.field private final c:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ld6/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/d<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/f<",
            "*>;>;",
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg6/h;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lg6/h;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lg6/h;->c:Ld6/d;

    return-void
.end method

.method public static a()Lg6/h$a;
    .registers 1

    .line 1
    new-instance v0, Lg6/h$a;

    invoke-direct {v0}, Lg6/h$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg6/f;

    iget-object v1, p0, Lg6/h;->a:Ljava/util/Map;

    iget-object v2, p0, Lg6/h;->b:Ljava/util/Map;

    iget-object v3, p0, Lg6/h;->c:Ld6/d;

    invoke-direct {v0, p2, v1, v2, v3}, Lg6/f;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Ld6/d;)V

    .line 2
    invoke-virtual {v0, p1}, Lg6/f;->t(Ljava/lang/Object;)Lg6/f;

    return-void
.end method

.method public c(Ljava/lang/Object;)[B
    .registers 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lg6/h;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    .line 3
    :catch_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

###### Class g6.h.a (g6.h$a)
.class public final Lg6/h$a;
.super Ljava/lang/Object;
.source "ProtobufEncoder.java"

# interfaces
.implements Le6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le6/b<",
        "Lg6/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lg6/g;->a:Lg6/g;

    sput-object v0, Lg6/h$a;->d:Ld6/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg6/h$a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg6/h$a;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lg6/h$a;->d:Ld6/d;

    iput-object v0, p0, Lg6/h$a;->c:Ld6/d;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ld6/e;)V
    .registers 2

    invoke-static {p0, p1}, Lg6/h$a;->e(Ljava/lang/Object;Ld6/e;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Object;Ld6/e;)V
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


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Ld6/d;)Le6/b;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lg6/h$a;->f(Ljava/lang/Class;Ld6/d;)Lg6/h$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lg6/h;
    .registers 5

    .line 1
    new-instance v0, Lg6/h;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lg6/h$a;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lg6/h$a;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lg6/h$a;->c:Ld6/d;

    invoke-direct {v0, v1, v2, v3}, Lg6/h;-><init>(Ljava/util/Map;Ljava/util/Map;Ld6/d;)V

    return-object v0
.end method

.method public d(Le6/a;)Lg6/h$a;
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Le6/a;->a(Le6/b;)V

    return-object p0
.end method

.method public f(Ljava/lang/Class;Ld6/d;)Lg6/h$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ld6/d<",
            "-TU;>;)",
            "Lg6/h$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg6/h$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lg6/h$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

###### Class g6.g (g6.g)
.class public final synthetic Lg6/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ld6/d;


# static fields
.field public static final synthetic a:Lg6/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lg6/g;

    invoke-direct {v0}, Lg6/g;-><init>()V

    sput-object v0, Lg6/g;->a:Lg6/g;

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

    invoke-static {p1, p2}, Lg6/h$a;->b(Ljava/lang/Object;Ld6/e;)V

    return-void
.end method
