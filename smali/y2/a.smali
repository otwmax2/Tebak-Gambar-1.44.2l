###### Class y2.a (y2.a)
.class public Ly2/a;
.super Ljava/lang/Object;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/a$c;,
        Ly2/a$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/reflect/Method;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Ly2/a;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Ly2/a;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Ly2/a;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const-string v1, "Dart"

    if-eqz v0, :cond_16

    .line 2
    sget-boolean p0, Ly2/a;->c:Z

    if-eqz p0, :cond_15

    const-string p0, "HIT: Cached in injector map."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-object v0

    .line 3
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android."

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_8f

    .line 5
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$ExtraInjector"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "inject"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 6
    const-class v5, Ly2/a$b;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7
    sget-boolean v2, Ly2/a;->c:Z

    if-eqz v2, :cond_89

    const-string v2, "HIT: Class loaded injection class."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_5f} :catch_60

    goto :goto_89

    :catch_60
    nop

    .line 8
    sget-boolean v0, Ly2/a;->c:Z

    if-eqz v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found. Trying superclass "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_81
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly2/a;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 10
    :cond_89
    :goto_89
    sget-object v1, Ly2/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 11
    :cond_8f
    :goto_8f
    sget-boolean p0, Ly2/a;->c:Z

    if-eqz p0, :cond_98

    const-string p0, "MISS: Reached framework class. Abandoning search."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_98
    sget-object p0, Ly2/a;->b:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 2

    .line 1
    sget-object v0, Ly2/a$b;->o:Ly2/a$b;

    invoke-static {p0, p0, v0}, Ly2/a;->d(Ljava/lang/Object;Ljava/lang/Object;Ly2/a$b;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    sget-object v0, Ly2/a$b;->q:Ly2/a$b;

    invoke-static {p0, p1, v0}, Ly2/a;->d(Ljava/lang/Object;Ljava/lang/Object;Ly2/a$b;)V

    return-void
.end method

.method static d(Ljava/lang/Object;Ljava/lang/Object;Ly2/a$b;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_4
    sget-boolean v1, Ly2/a;->c:Z

    if-eqz v1, :cond_22

    const-string v1, "Dart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up extra injector for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_22
    invoke-static {v0}, Ly2/a;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_38

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p0, v2, p2

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_38} :catch_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    :cond_38
    return-void

    :catch_39
    move-exception p1

    .line 5
    new-instance p2, Ly2/a$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to inject extras for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ly2/a$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_51
    move-exception p0

    .line 6
    throw p0
.end method

###### Class y2.a.C0300a (y2.a$a)
.class synthetic Ly2/a$a;
.super Ljava/lang/Object;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class y2.a.b (y2.a$b)
.class public abstract enum Ly2/a$b;
.super Ljava/lang/Enum;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Ly2/a$b;

.field public static final enum p:Ly2/a$b;

.field public static final enum q:Ly2/a$b;

.field private static final synthetic r:[Ly2/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ly2/a$b$a;

    const-string v1, "ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly2/a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly2/a$b;->o:Ly2/a$b;

    .line 2
    new-instance v1, Ly2/a$b$b;

    const-string v3, "FRAGMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly2/a$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly2/a$b;->p:Ly2/a$b;

    .line 3
    new-instance v3, Ly2/a$b$c;

    const-string v5, "BUNDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly2/a$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly2/a$b;->q:Ly2/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Ly2/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ly2/a$b;->r:[Ly2/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILy2/a$a;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Ly2/a$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly2/a$b;
    .registers 2

    .line 1
    const-class v0, Ly2/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/a$b;

    return-object p0
.end method

.method public static values()[Ly2/a$b;
    .registers 1

    .line 1
    sget-object v0, Ly2/a$b;->r:[Ly2/a$b;

    invoke-virtual {v0}, [Ly2/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/a$b;

    return-object v0
.end method


# virtual methods
.method public abstract c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

###### Class y2.a.b.C0301a (y2.a$b$a)
.class final enum Ly2/a$b$a;
.super Ly2/a$b;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ly2/a$b;-><init>(Ljava/lang/String;ILy2/a$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_14

    .line 2
    :cond_a
    sget-object v0, Ly2/a$b;->q:Ly2/a$b;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_14
    return-object p1
.end method

###### Class y2.a.b.C0302b (y2.a$b$b)
.class final enum Ly2/a$b$b;
.super Ly2/a$b;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ly2/a$b;-><init>(Ljava/lang/String;ILy2/a$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 2
    sget-object v0, Ly2/a$b;->q:Ly2/a$b;

    invoke-virtual {v0, p1, p2}, Ly2/a$b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class y2.a.b.c (y2.a$b$c)
.class final enum Ly2/a$b$c;
.super Ly2/a$b;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ly2/a$b;-><init>(Ljava/lang/String;ILy2/a$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 1
    :cond_4
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

###### Class y2.a.c (y2.a$c)
.class public Ly2/a$c;
.super Ljava/lang/RuntimeException;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
