###### Class wa.a (wa.a)
.class final Lwa/a;
.super Lwa/e$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/a$d;,
        Lwa/a$a;,
        Lwa/a$c;,
        Lwa/a$b;,
        Lwa/a$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lwa/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/e<",
            "*",
            "Lja/b0;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p2, Lja/b0;

    invoke-static {p1}, Lwa/o;->i(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    sget-object p1, Lwa/a$b;->a:Lwa/a$b;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lwa/m;)Lwa/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lwa/m;",
            ")",
            "Lwa/e<",
            "Lja/d0;",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p3, Lja/d0;

    if-ne p1, p3, :cond_12

    .line 2
    const-class p1, Lya/w;

    invoke-static {p2, p1}, Lwa/o;->m([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3
    sget-object p1, Lwa/a$c;->a:Lwa/a$c;

    goto :goto_11

    .line 4
    :cond_f
    sget-object p1, Lwa/a$a;->a:Lwa/a$a;

    :goto_11
    return-object p1

    .line 5
    :cond_12
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_19

    .line 6
    sget-object p1, Lwa/a$e;->a:Lwa/a$e;

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

###### Class wa.a.C0288a (wa.a$a)
.class final Lwa/a$a;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Lja/d0;",
        "Lja/d0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lwa/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/a$a;

    invoke-direct {v0}, Lwa/a$a;-><init>()V

    sput-object v0, Lwa/a$a;->a:Lwa/a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/d0;)Lja/d0;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lwa/o;->a(Lja/d0;)Lja/d0;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 2
    invoke-virtual {p1}, Lja/d0;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p1}, Lja/d0;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lwa/a$a;->a(Lja/d0;)Lja/d0;

    move-result-object p1

    return-object p1
.end method

###### Class wa.a.b (wa.a$b)
.class final Lwa/a$b;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Lja/b0;",
        "Lja/b0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lwa/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/a$b;

    invoke-direct {v0}, Lwa/a$b;-><init>()V

    sput-object v0, Lwa/a$b;->a:Lwa/a$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/b0;)Lja/b0;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/b0;

    invoke-virtual {p0, p1}, Lwa/a$b;->a(Lja/b0;)Lja/b0;

    move-result-object p1

    return-object p1
.end method

###### Class wa.a.c (wa.a$c)
.class final Lwa/a$c;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Lja/d0;",
        "Lja/d0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lwa/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/a$c;

    invoke-direct {v0}, Lwa/a$c;-><init>()V

    sput-object v0, Lwa/a$c;->a:Lwa/a$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/d0;)Lja/d0;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lwa/a$c;->a(Lja/d0;)Lja/d0;

    move-result-object p1

    return-object p1
.end method

###### Class wa.a.d (wa.a$d)
.class final Lwa/a$d;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lwa/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/a$d;

    invoke-direct {v0}, Lwa/a$d;-><init>()V

    sput-object v0, Lwa/a$d;->a:Lwa/a$d;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lwa/a$d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class wa.a.e (wa.a$e)
.class final Lwa/a$e;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Lja/d0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lwa/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lwa/a$e;

    invoke-direct {v0}, Lwa/a$e;-><init>()V

    sput-object v0, Lwa/a$e;->a:Lwa/a$e;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/d0;)Ljava/lang/Void;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lja/d0;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lwa/a$e;->a(Lja/d0;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
