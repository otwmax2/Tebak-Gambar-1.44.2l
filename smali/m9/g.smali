###### Class m9.g (m9.g)
.class public final Lm9/g;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# direct methods
.method private static final a(II)V
    .registers 5

    if-gt p1, p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug metadata version mismatch. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Please update the Kotlin standard library."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final b(Lm9/a;)Lm9/f;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lm9/f;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lm9/f;

    return-object p0
.end method

.method private static final c(Lm9/a;)I
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    sub-int/2addr p0, v1

    goto :goto_25

    :catch_24
    const/4 p0, -0x1

    :goto_25
    return p0
.end method

.method public static final d(Lm9/a;)Ljava/lang/StackTraceElement;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lm9/g;->b(Lm9/a;)Lm9/f;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    const/4 v1, 0x1

    .line 2
    invoke-interface {v0}, Lm9/f;->v()I

    move-result v2

    invoke-static {v1, v2}, Lm9/g;->a(II)V

    .line 3
    invoke-static {p0}, Lm9/g;->c(Lm9/a;)I

    move-result v1

    if-gez v1, :cond_1d

    const/4 v1, -0x1

    goto :goto_23

    .line 4
    :cond_1d
    invoke-interface {v0}, Lm9/f;->l()[I

    move-result-object v2

    aget v1, v2, v1

    .line 5
    :goto_23
    sget-object v2, Lm9/i;->a:Lm9/i;

    invoke-virtual {v2, p0}, Lm9/i;->b(Lm9/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_30

    .line 6
    invoke-interface {v0}, Lm9/f;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lm9/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_48
    new-instance v2, Ljava/lang/StackTraceElement;

    invoke-interface {v0}, Lm9/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lm9/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method
