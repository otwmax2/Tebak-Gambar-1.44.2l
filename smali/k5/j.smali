###### Class k5.j (k5.j)
.class public interface abstract Lk5/j;
.super Ljava/lang/Object;
.source "ComponentRegistrarProcessor.java"


# static fields
.field public static final a:Lk5/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lk5/i;->b:Lk5/i;

    sput-object v0, Lk5/j;->a:Lk5/j;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation
.end method

###### Class k5.i (k5.i)
.class public final synthetic Lk5/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/j;


# static fields
.field public static final synthetic b:Lk5/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    sput-object v0, Lk5/i;->b:Lk5/i;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .registers 2

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
