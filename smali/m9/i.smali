###### Class m9.i (m9.i)
.class final Lm9/i;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/i$a;
    }
.end annotation


# static fields
.field public static final a:Lm9/i;

.field private static final b:Lm9/i$a;

.field private static c:Lm9/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm9/i;

    invoke-direct {v0}, Lm9/i;-><init>()V

    sput-object v0, Lm9/i;->a:Lm9/i;

    .line 1
    new-instance v0, Lm9/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lm9/i$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lm9/i;->b:Lm9/i$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lm9/a;)Lm9/i$a;
    .registers 7

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getModule"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "java.lang.Module"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getDescriptor"

    new-array v4, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v3, "java.lang.module.ModuleDescriptor"

    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v3, "name"

    new-array v2, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 7
    new-instance v2, Lm9/i$a;

    invoke-direct {v2, v0, v1, p1}, Lm9/i$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v2, Lm9/i;->c:Lm9/i$a;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v2

    .line 8
    :catch_3f
    sget-object p1, Lm9/i;->b:Lm9/i$a;

    sput-object p1, Lm9/i;->c:Lm9/i$a;

    return-object p1
.end method


# virtual methods
.method public final b(Lm9/a;)Ljava/lang/String;
    .registers 7

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm9/i;->c:Lm9/i$a;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lm9/i;->a(Lm9/a;)Lm9/i$a;

    move-result-object v0

    .line 2
    :cond_d
    sget-object v1, Lm9/i;->b:Lm9/i$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    return-object v2

    .line 3
    :cond_13
    iget-object v1, v0, Lm9/i$a;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_24

    :cond_23
    move-object p1, v2

    :goto_24
    if-nez p1, :cond_27

    return-object v2

    .line 4
    :cond_27
    iget-object v1, v0, Lm9/i$a;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_32

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_33

    :cond_32
    move-object p1, v2

    :goto_33
    if-nez p1, :cond_36

    return-object v2

    .line 5
    :cond_36
    iget-object v0, v0, Lm9/i$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_41

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_42

    :cond_41
    move-object p1, v2

    :goto_42
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_49

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_49
    return-object v2
.end method

###### Class m9.i.a (m9.i$a)
.class final Lm9/i$a;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm9/i$a;->a:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Lm9/i$a;->b:Ljava/lang/reflect/Method;

    .line 4
    iput-object p3, p0, Lm9/i$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method
