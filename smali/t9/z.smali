###### Class t9.z (t9.z)
.class public Lt9/z;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final a:Lt9/a0;

.field private static final b:[Lz9/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt9/a0;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_10

    :catch_f
    nop

    :goto_10
    if-eqz v0, :cond_13

    goto :goto_18

    .line 3
    :cond_13
    new-instance v0, Lt9/a0;

    invoke-direct {v0}, Lt9/a0;-><init>()V

    :goto_18
    sput-object v0, Lt9/z;->a:Lt9/a0;

    const/4 v0, 0x0

    new-array v0, v0, [Lz9/b;

    .line 4
    sput-object v0, Lt9/z;->b:[Lz9/b;

    return-void
.end method

.method public static a(Lt9/i;)Lz9/d;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->a(Lt9/i;)Lz9/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lz9/b;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->b(Ljava/lang/Class;)Lz9/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lz9/c;
    .registers 3

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lt9/a0;->c(Ljava/lang/Class;Ljava/lang/String;)Lz9/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lt9/p;)Lz9/e;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->d(Lt9/p;)Lz9/e;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lt9/r;)Lz9/f;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->e(Lt9/r;)Lz9/f;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lt9/t;)Lz9/g;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->f(Lt9/t;)Lz9/g;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lt9/h;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->g(Lt9/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lt9/n;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lt9/z;->a:Lt9/a0;

    invoke-virtual {v0, p0}, Lt9/a0;->h(Lt9/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
