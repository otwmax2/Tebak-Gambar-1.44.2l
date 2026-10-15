package com.vungle.warren;

import com.vungle.warren.AdLoader;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
class OperationSequence {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PriorityQueue<Entry> f27817a = new PriorityQueue<>(11, new Comparator<Entry>() { // from class: com.vungle.warren.OperationSequence.1
        @Override // java.util.Comparator
        public int compare(Entry entry, Entry entry2) {
            int iCompareTo = Integer.valueOf(entry.f27821b.f27706k).compareTo(Integer.valueOf(entry2.f27821b.f27706k));
            return iCompareTo == 0 ? Integer.valueOf(entry.f27820a).compareTo(Integer.valueOf(entry2.f27820a)) : iCompareTo;
        }
    });

    static class Entry {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final AtomicInteger f27819c = new AtomicInteger();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f27820a = f27819c.incrementAndGet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        AdLoader.Operation f27821b;

        Entry(AdLoader.Operation operation) {
            this.f27821b = operation;
        }
    }

    OperationSequence() {
    }

    boolean a(Entry entry) {
        return this.f27817a.offer(entry);
    }

    Entry b() {
        return this.f27817a.poll();
    }

    Entry c(AdRequest adRequest) {
        Entry next;
        Iterator<Entry> it = this.f27817a.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next.f27821b.f27696a.equals(adRequest)) {
                break;
            }
        }
        this.f27817a.remove(next);
        return next;
    }

    List<Entry> d() {
        ArrayList arrayList = new ArrayList();
        while (!this.f27817a.isEmpty()) {
            Entry entryPoll = this.f27817a.poll();
            if (entryPoll != null) {
                arrayList.add(entryPoll);
            }
        }
        return arrayList;
    }
}
