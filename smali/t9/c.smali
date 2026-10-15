###### Class t9.c (t9.c)
.class public abstract Lt9/c;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lz9/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/c$a;
    }
.end annotation


# static fields
.field public static final u:Ljava/lang/Object;


# instance fields
.field private transient o:Lz9/a;

.field protected final p:Ljava/lang/Object;

.field private final q:Ljava/lang/Class;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lt9/c$a;->a()Lt9/c$a;

    move-result-object v0

    sput-object v0, Lt9/c;->u:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lt9/c;->u:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lt9/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lt9/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lt9/c;->p:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lt9/c;->q:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lt9/c;->r:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lt9/c;->s:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lt9/c;->t:Z

    return-void
.end method


# virtual methods
.method public d()Lz9/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lt9/c;->o:Lz9/a;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lt9/c;->e()Lz9/a;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lt9/c;->o:Lz9/a;

    :cond_a
    return-object v0
.end method

.method protected abstract e()Lz9/a;
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lt9/c;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lt9/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lz9/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lt9/c;->q:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_13

    :cond_6
    iget-boolean v1, p0, Lt9/c;->t:Z

    if-eqz v1, :cond_f

    invoke-static {v0}, Lt9/z;->c(Ljava/lang/Class;)Lz9/c;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-static {v0}, Lt9/z;->b(Ljava/lang/Class;)Lz9/b;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method protected j()Lz9/a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt9/c;->d()Lz9/a;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-object v0

    .line 2
    :cond_7
    new-instance v0, Lr9/b;

    invoke-direct {v0}, Lr9/b;-><init>()V

    throw v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lt9/c;->s:Ljava/lang/String;

    return-object v0
.end method

###### Class t9.c.a (t9.c$a)
.class Lt9/c$a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final o:Lt9/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt9/c$a;

    invoke-direct {v0}, Lt9/c$a;-><init>()V

    sput-object v0, Lt9/c$a;->o:Lt9/c$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lt9/c$a;
    .registers 1

    .line 1
    sget-object v0, Lt9/c$a;->o:Lt9/c$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    sget-object v0, Lt9/c$a;->o:Lt9/c$a;

    return-object v0
.end method
