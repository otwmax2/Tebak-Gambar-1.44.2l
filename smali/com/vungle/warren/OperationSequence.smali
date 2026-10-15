###### Class com.vungle.warren.OperationSequence (com.vungle.warren.OperationSequence)
.class Lcom/vungle/warren/OperationSequence;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/OperationSequence$Entry;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/vungle/warren/OperationSequence$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/vungle/warren/OperationSequence$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/OperationSequence$1;-><init>(Lcom/vungle/warren/OperationSequence;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method a(Lcom/vungle/warren/OperationSequence$Entry;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b()Lcom/vungle/warren/OperationSequence$Entry;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/OperationSequence$Entry;

    return-object v0
.end method

.method c(Lcom/vungle/warren/AdRequest;)Lcom/vungle/warren/OperationSequence$Entry;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/OperationSequence$Entry;

    .line 2
    iget-object v2, v1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v2, p1}, Lcom/vungle/warren/AdRequest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 3
    :goto_1e
    iget-object p1, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/OperationSequence$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/OperationSequence;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/OperationSequence$Entry;

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1b
    return-object v0
.end method

###### Class com.vungle.warren.OperationSequence.AnonymousClass1 (com.vungle.warren.OperationSequence$1)
.class Lcom/vungle/warren/OperationSequence$1;
.super Ljava/lang/Object;
.source "OperationSequence.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vungle/warren/OperationSequence$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/OperationSequence;


# direct methods
.method constructor <init>(Lcom/vungle/warren/OperationSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/OperationSequence$1;->o:Lcom/vungle/warren/OperationSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vungle/warren/OperationSequence$Entry;Lcom/vungle/warren/OperationSequence$Entry;)I
    .registers 5

    .line 2
    iget-object v0, p1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    iget v0, v0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p2, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    iget v1, v1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 3
    invoke-static {p1}, Lcom/vungle/warren/OperationSequence$Entry;->a(Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/vungle/warren/OperationSequence$Entry;->a(Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_2b
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/vungle/warren/OperationSequence$Entry;

    check-cast p2, Lcom/vungle/warren/OperationSequence$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/OperationSequence$1;->compare(Lcom/vungle/warren/OperationSequence$Entry;Lcom/vungle/warren/OperationSequence$Entry;)I

    move-result p1

    return p1
.end method

###### Class com.vungle.warren.OperationSequence.Entry (com.vungle.warren.OperationSequence$Entry)
.class Lcom/vungle/warren/OperationSequence$Entry;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:I

.field b:Lcom/vungle/warren/AdLoader$Operation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/vungle/warren/OperationSequence$Entry;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/vungle/warren/OperationSequence$Entry;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/OperationSequence$Entry;->a:I

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/OperationSequence$Entry;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/OperationSequence$Entry;->a:I

    return p0
.end method
