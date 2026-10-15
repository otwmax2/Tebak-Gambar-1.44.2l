###### Class androidx.lifecycle.j (androidx.lifecycle.j)
.class public abstract Landroidx/lifecycle/j;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/j$c;,
        Landroidx/lifecycle/j$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/j;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/lifecycle/m;)V
.end method

.method public abstract b()Landroidx/lifecycle/j$c;
.end method

.method public abstract c(Landroidx/lifecycle/m;)V
.end method

###### Class androidx.lifecycle.j.a (androidx.lifecycle.j$a)
.class synthetic Landroidx/lifecycle/j$a;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    invoke-static {}, Landroidx/lifecycle/j$b;->values()[Landroidx/lifecycle/j$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/j$a;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/lifecycle/j$a;->b:[I

    sget-object v3, Landroidx/lifecycle/j$b;->ON_STOP:Landroidx/lifecycle/j$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Landroidx/lifecycle/j$a;->b:[I

    sget-object v4, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Landroidx/lifecycle/j$a;->b:[I

    sget-object v5, Landroidx/lifecycle/j$b;->ON_PAUSE:Landroidx/lifecycle/j$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Landroidx/lifecycle/j$a;->b:[I

    sget-object v6, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v5, Landroidx/lifecycle/j$a;->b:[I

    sget-object v6, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v5, Landroidx/lifecycle/j$a;->b:[I

    sget-object v6, Landroidx/lifecycle/j$b;->ON_ANY:Landroidx/lifecycle/j$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    .line 2
    :catch_54
    invoke-static {}, Landroidx/lifecycle/j$c;->values()[Landroidx/lifecycle/j$c;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/lifecycle/j$a;->a:[I

    :try_start_5d
    sget-object v6, Landroidx/lifecycle/j$c;->q:Landroidx/lifecycle/j$c;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v1, Landroidx/lifecycle/j$a;->a:[I

    sget-object v5, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    sget-object v1, Landroidx/lifecycle/j$c;->s:Landroidx/lifecycle/j$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    sget-object v1, Landroidx/lifecycle/j$c;->o:Landroidx/lifecycle/j$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    sget-object v1, Landroidx/lifecycle/j$c;->p:Landroidx/lifecycle/j$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    return-void
.end method

###### Class androidx.lifecycle.j.b (androidx.lifecycle.j$b)
.class public final enum Landroidx/lifecycle/j$b;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/j$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/j$b;

.field public static final enum ON_ANY:Landroidx/lifecycle/j$b;

.field public static final enum ON_CREATE:Landroidx/lifecycle/j$b;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/j$b;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/j$b;

.field public static final enum ON_RESUME:Landroidx/lifecycle/j$b;

.field public static final enum ON_START:Landroidx/lifecycle/j$b;

.field public static final enum ON_STOP:Landroidx/lifecycle/j$b;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Landroidx/lifecycle/j$b;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    .line 2
    new-instance v1, Landroidx/lifecycle/j$b;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    .line 3
    new-instance v3, Landroidx/lifecycle/j$b;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    .line 4
    new-instance v5, Landroidx/lifecycle/j$b;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/j$b;->ON_PAUSE:Landroidx/lifecycle/j$b;

    .line 5
    new-instance v7, Landroidx/lifecycle/j$b;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/lifecycle/j$b;->ON_STOP:Landroidx/lifecycle/j$b;

    .line 6
    new-instance v9, Landroidx/lifecycle/j$b;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    .line 7
    new-instance v11, Landroidx/lifecycle/j$b;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/lifecycle/j$b;->ON_ANY:Landroidx/lifecycle/j$b;

    const/4 v13, 0x7

    new-array v13, v13, [Landroidx/lifecycle/j$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Landroidx/lifecycle/j$b;->$VALUES:[Landroidx/lifecycle/j$b;

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

.method public static c(Landroidx/lifecycle/j$c;)Landroidx/lifecycle/j$b;
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_13
    sget-object p0, Landroidx/lifecycle/j$b;->ON_PAUSE:Landroidx/lifecycle/j$b;

    return-object p0

    .line 3
    :cond_16
    sget-object p0, Landroidx/lifecycle/j$b;->ON_STOP:Landroidx/lifecycle/j$b;

    return-object p0

    .line 4
    :cond_19
    sget-object p0, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    return-object p0
.end method

.method public static f(Landroidx/lifecycle/j$c;)Landroidx/lifecycle/j$b;
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_13
    sget-object p0, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    return-object p0

    .line 3
    :cond_16
    sget-object p0, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    return-object p0

    .line 4
    :cond_19
    sget-object p0, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    return-object p0
.end method

.method public static g(Landroidx/lifecycle/j$c;)Landroidx/lifecycle/j$b;
    .registers 2

    .line 1
    sget-object v0, Landroidx/lifecycle/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_13
    sget-object p0, Landroidx/lifecycle/j$b;->ON_RESUME:Landroidx/lifecycle/j$b;

    return-object p0

    .line 3
    :cond_16
    sget-object p0, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    return-object p0

    .line 4
    :cond_19
    sget-object p0, Landroidx/lifecycle/j$b;->ON_CREATE:Landroidx/lifecycle/j$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/j$b;
    .registers 2

    .line 1
    const-class v0, Landroidx/lifecycle/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j$b;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/j$b;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/j$b;->$VALUES:[Landroidx/lifecycle/j$b;

    invoke-virtual {v0}, [Landroidx/lifecycle/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/j$b;

    return-object v0
.end method


# virtual methods
.method public e()Landroidx/lifecycle/j$c;
    .registers 4

    .line 1
    sget-object v0, Landroidx/lifecycle/j$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_22
    sget-object v0, Landroidx/lifecycle/j$c;->o:Landroidx/lifecycle/j$c;

    return-object v0

    .line 4
    :pswitch_25
    sget-object v0, Landroidx/lifecycle/j$c;->s:Landroidx/lifecycle/j$c;

    return-object v0

    .line 5
    :pswitch_28
    sget-object v0, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    return-object v0

    .line 6
    :pswitch_2b
    sget-object v0, Landroidx/lifecycle/j$c;->q:Landroidx/lifecycle/j$c;

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

###### Class androidx.lifecycle.j.c (androidx.lifecycle.j$c)
.class public final enum Landroidx/lifecycle/j$c;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/j$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/lifecycle/j$c;

.field public static final enum p:Landroidx/lifecycle/j$c;

.field public static final enum q:Landroidx/lifecycle/j$c;

.field public static final enum r:Landroidx/lifecycle/j$c;

.field public static final enum s:Landroidx/lifecycle/j$c;

.field private static final synthetic t:[Landroidx/lifecycle/j$c;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Landroidx/lifecycle/j$c;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/j$c;->o:Landroidx/lifecycle/j$c;

    .line 2
    new-instance v1, Landroidx/lifecycle/j$c;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/j$c;->p:Landroidx/lifecycle/j$c;

    .line 3
    new-instance v3, Landroidx/lifecycle/j$c;

    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/j$c;->q:Landroidx/lifecycle/j$c;

    .line 4
    new-instance v5, Landroidx/lifecycle/j$c;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    .line 5
    new-instance v7, Landroidx/lifecycle/j$c;

    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/lifecycle/j$c;->s:Landroidx/lifecycle/j$c;

    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/lifecycle/j$c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Landroidx/lifecycle/j$c;->t:[Landroidx/lifecycle/j$c;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/j$c;
    .registers 2

    .line 1
    const-class v0, Landroidx/lifecycle/j$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j$c;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/j$c;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/j$c;->t:[Landroidx/lifecycle/j$c;

    invoke-virtual {v0}, [Landroidx/lifecycle/j$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/j$c;

    return-object v0
.end method


# virtual methods
.method public c(Landroidx/lifecycle/j$c;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
