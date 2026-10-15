###### Class p9.a (p9.a)
.class public Lp9/a;
.super Lo9/a;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp9/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lo9/a;-><init>()V

    return-void
.end method

.method private final c(I)Z
    .registers 3

    .line 1
    sget-object v0, Lp9/a$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method


# virtual methods
.method public b()Lw9/c;
    .registers 2

    const/16 v0, 0x18

    .line 1
    invoke-direct {p0, v0}, Lp9/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lx9/a;

    invoke-direct {v0}, Lx9/a;-><init>()V

    goto :goto_12

    :cond_e
    invoke-super {p0}, Ln9/a;->b()Lw9/c;

    move-result-object v0

    :goto_12
    return-object v0
.end method

###### Class p9.a.C0219a (p9.a$a)
.class final Lp9/a$a;
.super Ljava/lang/Object;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Lp9/a$a;

.field public static final b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lp9/a$a;

    invoke-direct {v0}, Lp9/a$a;-><init>()V

    sput-object v0, Lp9/a$a;->a:Lp9/a$a;

    const/4 v0, 0x0

    :try_start_8
    const-string v1, "android.os.Build$VERSION"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    check-cast v1, Ljava/lang/Integer;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_20

    :catchall_1f
    :cond_1f
    move-object v1, v0

    :goto_20
    if-eqz v1, :cond_2e

    .line 2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_2e

    move-object v0, v1

    :cond_2e
    sput-object v0, Lp9/a$a;->b:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
