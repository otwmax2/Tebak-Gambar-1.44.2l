package com.vungle.warren.tasks;

import android.os.Bundle;
import android.util.Log;
import com.vungle.warren.AdLoader;
import com.vungle.warren.model.Advertisement;
import com.vungle.warren.model.Placement;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Designer;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CleanupJob implements Job {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f28345d = "com.vungle.warren.tasks.CleanupJob";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Designer f28346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Repository f28347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AdLoader f28348c;

    CleanupJob(Designer designer, Repository repository, AdLoader adLoader) {
        this.f28346a = designer;
        this.f28347b = repository;
        this.f28348c = adLoader;
    }

    public static JobInfo makeJobInfo() {
        return new JobInfo(f28345d).setPriority(0).setUpdateCurrent(true);
    }

    @Override // com.vungle.warren.tasks.Job
    public int onRunJob(Bundle bundle, JobRunner jobRunner) {
        if (this.f28346a == null || this.f28347b == null) {
            return 1;
        }
        Log.d(f28345d, "CleanupJob: Current directory snapshot");
        FileUtility.printDirectoryTree(this.f28346a.getCacheDirectory());
        File[] fileArrListFiles = this.f28346a.getCacheDirectory().listFiles();
        List<Placement> list = (List) this.f28347b.loadAll(Placement.class).get();
        if (list == null || list.size() == 0) {
            return 0;
        }
        Collection<Placement> collection = this.f28347b.loadValidPlacements().get();
        HashSet hashSet = new HashSet();
        try {
            for (Placement placement : list) {
                if (collection == null || collection.isEmpty() || collection.contains(placement)) {
                    List<String> list2 = this.f28347b.findAdsForPlacement(placement.getId()).get();
                    if (list2 != null) {
                        for (String str : list2) {
                            Advertisement advertisement = (Advertisement) this.f28347b.load(str, Advertisement.class).get();
                            if (advertisement != null) {
                                if (advertisement.getExpireTime() > System.currentTimeMillis() || advertisement.getState() == 2) {
                                    hashSet.add(advertisement.getId());
                                    Log.w(f28345d, "setting valid adv " + str + " for placement " + placement.getId());
                                } else {
                                    this.f28347b.deleteAdvertisement(str);
                                    this.f28348c.loadEndlessIfNeeded(placement, placement.getAdSize(), 1000L);
                                }
                            }
                        }
                    }
                } else {
                    Log.d(f28345d, String.format(Locale.ENGLISH, "Placement %s is no longer valid, deleting it and its advertisement", placement.getId()));
                    this.f28347b.delete(placement);
                }
            }
            List<Advertisement> list3 = (List) this.f28347b.loadAll(Advertisement.class).get();
            if (list3 != null) {
                for (Advertisement advertisement2 : list3) {
                    if (advertisement2.getState() == 2) {
                        hashSet.add(advertisement2.getId());
                        Log.d(f28345d, "found adv in viewing state " + advertisement2.getId());
                    } else if (!hashSet.contains(advertisement2.getId())) {
                        Log.e(f28345d, "    delete ad " + advertisement2.getId());
                        this.f28347b.deleteAdvertisement(advertisement2.getId());
                    }
                }
            }
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (!hashSet.contains(file.getName())) {
                        Log.v(f28345d, String.format(Locale.ENGLISH, "Deleting assets under directory %s", file.getName()));
                        FileUtility.delete(file);
                    }
                }
            }
            return 0;
        } catch (DatabaseHelper.DBException unused) {
            return 1;
        } catch (IOException e10) {
            Log.e(f28345d, "Failed to delete asset directory!", e10);
            return 1;
        }
    }
}
