###### Class c9.l (c9.l)
.class public final Lc9/l;
.super Ljava/lang/Object;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/l$b;
    }
.end annotation


# direct methods
.method public static a(Lf9/p;Lc9/l$b;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_32

    .line 1
    iget-object p0, p0, Lf9/p;->N:Ljava/lang/String;

    if-eqz p0, :cond_32

    if-eqz p1, :cond_31

    if-nez p0, :cond_b

    goto :goto_31

    .line 2
    :cond_b
    sget-object v0, Lc9/l$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    const/4 v1, 0x5

    if-eq v0, v1, :cond_23

    return-object p0

    .line 3
    :cond_23
    sget-object v0, Lc9/l$b;->p:Lc9/l$b;

    .line 4
    invoke-virtual {v0}, Lc9/l$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc9/l$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_31
    :goto_31
    return-object p0

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

###### Class c9.l.a (c9.l$a)
.class synthetic Lc9/l$a;
.super Ljava/lang/Object;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lc9/l$b;->values()[Lc9/l$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc9/l$a;->a:[I

    :try_start_9
    sget-object v1, Lc9/l$b;->p:Lc9/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lc9/l$a;->a:[I

    sget-object v1, Lc9/l$b;->q:Lc9/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lc9/l$a;->a:[I

    sget-object v1, Lc9/l$b;->r:Lc9/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lc9/l$a;->a:[I

    sget-object v1, Lc9/l$b;->s:Lc9/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lc9/l$a;->a:[I

    sget-object v1, Lc9/l$b;->t:Lc9/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class c9.l.b (c9.l$b)
.class public final enum Lc9/l$b;
.super Ljava/lang/Enum;
.source "UserUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc9/l$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lc9/l$b;

.field public static final enum q:Lc9/l$b;

.field public static final enum r:Lc9/l$b;

.field public static final enum s:Lc9/l$b;

.field public static final enum t:Lc9/l$b;

.field private static final synthetic u:[Lc9/l$b;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lc9/l$b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "_normal"

    invoke-direct {v0, v1, v2, v3}, Lc9/l$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc9/l$b;->p:Lc9/l$b;

    .line 2
    new-instance v1, Lc9/l$b;

    const-string v3, "BIGGER"

    const/4 v4, 0x1

    const-string v5, "_bigger"

    invoke-direct {v1, v3, v4, v5}, Lc9/l$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lc9/l$b;->q:Lc9/l$b;

    .line 3
    new-instance v3, Lc9/l$b;

    const-string v5, "MINI"

    const/4 v6, 0x2

    const-string v7, "_mini"

    invoke-direct {v3, v5, v6, v7}, Lc9/l$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lc9/l$b;->r:Lc9/l$b;

    .line 4
    new-instance v5, Lc9/l$b;

    const-string v7, "ORIGINAL"

    const/4 v8, 0x3

    const-string v9, "_original"

    invoke-direct {v5, v7, v8, v9}, Lc9/l$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lc9/l$b;->s:Lc9/l$b;

    .line 5
    new-instance v7, Lc9/l$b;

    const-string v9, "REASONABLY_SMALL"

    const/4 v10, 0x4

    const-string v11, "_reasonably_small"

    invoke-direct {v7, v9, v10, v11}, Lc9/l$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lc9/l$b;->t:Lc9/l$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lc9/l$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lc9/l$b;->u:[Lc9/l$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lc9/l$b;->o:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc9/l$b;
    .registers 2

    .line 1
    const-class v0, Lc9/l$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc9/l$b;

    return-object p0
.end method

.method public static values()[Lc9/l$b;
    .registers 1

    .line 1
    sget-object v0, Lc9/l$b;->u:[Lc9/l$b;

    invoke-virtual {v0}, [Lc9/l$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc9/l$b;

    return-object v0
.end method


# virtual methods
.method c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc9/l$b;->o:Ljava/lang/String;

    return-object v0
.end method
