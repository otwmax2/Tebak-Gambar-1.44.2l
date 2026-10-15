###### Class i1.m (i1.m)
.class public interface abstract Li1/m;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/m$b;
    }
.end annotation


# static fields
.field public static final a:Li1/m$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Li1/m$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li1/m$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li1/m$b$c;-><init>(Li1/m$a;)V

    sput-object v0, Li1/m;->a:Li1/m$b$c;

    .line 2
    new-instance v0, Li1/m$b$b;

    invoke-direct {v0, v1}, Li1/m$b$b;-><init>(Li1/m$a;)V

    sput-object v0, Li1/m;->b:Li1/m$b$b;

    return-void
.end method

###### Class i1.m.a (i1.m$a)
.class synthetic Li1/m$a;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class i1.m.b (i1.m$b)
.class public abstract Li1/m$b;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/m$b$a;,
        Li1/m$b$b;,
        Li1/m$b$c;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class i1.m.b.a (i1.m$b$a)
.class public final Li1/m$b$a;
.super Li1/m$b;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li1/m$b;-><init>()V

    .line 2
    iput-object p1, p0, Li1/m$b$a;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Li1/m$b$a;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Li1/m$b$a;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FAILURE (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i1.m.b.C0175b (i1.m$b$b)
.class public final Li1/m$b$b;
.super Li1/m$b;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Li1/m$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li1/m$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li1/m$b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "IN_PROGRESS"

    return-object v0
.end method

###### Class i1.m.b.c (i1.m$b$c)
.class public final Li1/m$b$c;
.super Li1/m$b;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Li1/m$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li1/m$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Li1/m$b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SUCCESS"

    return-object v0
.end method
