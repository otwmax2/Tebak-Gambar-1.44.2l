###### Class ua.f (ua.f)
.class public final Lua/f;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/f$b;,
        Lua/f$d;,
        Lua/f$c;
    }
.end annotation


# static fields
.field private static final a:Lua/f$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lua/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lua/f$b;-><init>(Lua/f$a;)V

    sput-object v0, Lua/f;->a:Lua/f$b;

    .line 2
    invoke-static {}, Lua/b;->a()Lua/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lua/f$b;->d(Lua/g;)V

    return-void
.end method

.method public static a(Landroid/os/Parcelable;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    check-cast p0, Lua/d;

    .line 2
    invoke-interface {p0}, Lua/d;->getParcel()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    sget-object v0, Lua/f;->a:Lua/f$b;

    invoke-virtual {v0, p0}, Lua/f$b;->c(Ljava/lang/Class;)Lua/f$c;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lua/f$c;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lua/f;->b(Ljava/lang/Class;Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

###### Class ua.f.a (ua.f$a)
.class synthetic Lua/f$a;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class ua.f.b (ua.f$b)
.class final Lua/f$b;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Lua/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lua/f$b;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lua/f$a;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lua/f$b;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$$"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Parcelable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lua/f$c;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lua/f$b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 2
    new-instance v0, Lua/f$d;

    invoke-direct {v0, p1, p2}, Lua/f$d;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/Class;)Lua/f$c;
    .registers 5

    .line 1
    iget-object v0, p0, Lua/f$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/f$c;

    if-nez v0, :cond_5a

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lua/f$b;->b(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lua/f$c;

    move-result-object v0

    .line 3
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4
    new-instance v0, Lua/b$m0;

    invoke-direct {v0}, Lua/b$m0;-><init>()V

    :cond_1f
    if-eqz v0, :cond_2e

    .line 5
    iget-object v1, p0, Lua/f$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/f$c;

    if-nez p1, :cond_2c

    goto :goto_5a

    :cond_2c
    move-object v0, p1

    goto :goto_5a

    .line 6
    :cond_2e
    new-instance v0, Lua/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find generated Parcelable class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", verify that your class is configured properly and that the Parcelable class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p1}, Lua/f$b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is generated by Parceler."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lua/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public d(Lua/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/g<",
            "Lua/f$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lua/f$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lua/g;->get()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

###### Class ua.f.c (ua.f$c)
.class public interface abstract Lua/f$c;
.super Ljava/lang/Object;
.source "Parcels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation
.end method

###### Class ua.f.d (ua.f$d)
.class final Lua/f$d;
.super Ljava/lang/Object;
.source "Parcels.java"

# interfaces
.implements Lua/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lua/f$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lua/f$d;->a:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 3
    new-instance p2, Lua/e;

    const-string v0, "Unable to create ParcelFactory Type"

    invoke-direct {p2, v0, p1}, Lua/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    const-string v0, "Unable to create ParcelFactory Type"

    .line 1
    :try_start_2
    iget-object v1, p0, Lua/f$d;->a:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_10
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_10} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_10} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 2
    new-instance v1, Lua/e;

    invoke-direct {v1, v0, p1}, Lua/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_18
    move-exception p1

    .line 3
    new-instance v1, Lua/e;

    invoke-direct {v1, v0, p1}, Lua/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception p1

    .line 4
    new-instance v1, Lua/e;

    invoke-direct {v1, v0, p1}, Lua/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
